# Python Imports
import logging
import math
import os

# Maya Imports
from maya import cmds
from maya import mel
from maya import OpenMaya
from maya import OpenMayaAnim

from functools import wraps

# from artworks import cadet_util

# log = logging.getLogger("facerig_maya module")
# __PACKAGE__ = 'Facerig.Animation.Utilities'
# __CADET__ = cadet_util.Cadet()
# __CADET_PKG__ = __CADET__.GetPackage(__PACKAGE__, chdirToDestination=False)

__FRAMERATES__ = {'game': 15,
                  'film': 24,
                  'pal': 25,
                  'ntsc': 30,
                  'show': 48,
                  'palf': 50,
                  'ntscf': 60
                  }


# def get_maya_external_files(file_type="file"):
#     """Returns a dictionary {file.ext: ~/path/file.ext}
#
#     get_external_files(file_type="dx11Shader | file")
#     """
#     dct = {}
#     file_list = cmds.ls(type=file_type)
#     for node in file_list:
#         node_attr = ""
#         if file_type == 'dx11Shader':
#             node_attr = "{0}.shader".format(node)
#         else:
#             node_attr = "{0}.fileTextureName".format(node)
#
#         if not node_attr:
#             log.info('node_attr is none')
#             return
#
#         file_path = cmds.getAttr(node_attr)
#         file_split = file_path.split('/')
#
#         dct[file_split[-1]] = file_path
#     return dct


def get_scene_references():
    referenes = {}
    for ref in cmds.ls(type='reference'):
        if ref == "sharedReferenceNode":
            # filter "sharedReferenceNode" one out.
            continue

        referenes[ref[:-2]] = cmds.referenceQuery(ref, filename=True)
    return referenes


def get_real_path(client_root, filepath):
    """Returns string path for files from that are mapped to other drives.
       remaps drive by replacing the drive letter with perforce root directory.
        e.g.
            'd:/dev/roboto'
            'R:/Data/Raw/Animations/Rigs/Reckless/Male/m_reckless_01_s1_rig.mb'
            to:
            'd:/dev/roboto/Data/Raw/Animations/Rigs/Reckless/Male/m_reckless_01_s1_rig.mb'
        returns an empty string if file doesn't exist
        @return string
    """
    filepath_split = os.path.splitdrive(filepath)

    client_root_drive = os.path.splitdrive(client_root)[0].lower()
    filepath_drive = filepath_split[0].lower()
    if client_root_drive != filepath_drive:
        real_path = '{0}{1}'.format(client_root, filepath_split[1])

        if os.path.exists(real_path):
            return real_path
    return ''


def get_viewport_panels():
    return cmds.getPanel(type="modelPanel")


# ----API Functions------------------------------------------------------------
def get_current_camera():
    # Find the first main panel --> "modelPanel4" first.
    active_panels = cmds.getPanel(visiblePanels=True)
    main_panel = 'modelPanel4'
    if main_panel in active_panels:
        index = active_panels.index(main_panel)
        panel = active_panels[index]
        cmds.setFocus(panel)
        return cmds.modelEditor(panel, query=True, camera=True)

    # Try to find the next best panel.
    for panel in active_panels:
        if 'modelPanel' in panel:
            cmds.setFocus(panel)
            return cmds.modelEditor(panel, query=True, camera=True)


def get_dag_path(node):
    """Returns the MDagPath of the given object"""
    selection_list = OpenMaya.MSelectionList()
    try:
        selection_list.add(node)
    except Exception():
        return None
    dag_path = OpenMaya.MDagPath()
    selection_list.getDagPath(0, dag_path)
    return dag_path


def get_selected_xform_nodes():
    """Get selected transform nodes"""
    return cmds.ls(selection=True, type="transform", long=True) or []


def local_vector_to_worldspace(node, vec=OpenMaya.MVector(0, 1, 0)):
    """returns the objects given local vector in world space"""
    node_dag_path = get_dag_path(node)
    matrix = node_dag_path.inclusiveMatrix()

    vec = (vec * matrix).normal()
    return vec


def snap_objects(driver, driven, bake=False, translate=True, rotate=True):
    """This function will take an object of list of objects (driven) and snap them in world space
    translate and rotation to match the driver. If bake, do this across the time range"""

    if not isinstance(driver, basestring) or not cmds.objExists(driver):
        raise RuntimeError('{0} does not exist in the maya session'.format(driver))
    if isinstance(driven, list):
        for each in driven:
            if not isinstance(each, basestring) or not cmds.objExists(each):
                raise RuntimeError('{0} does not exist in the maya session'.format(each))
    elif isinstance(driven, basestring):
        if not cmds.objExists(driven):
            raise RuntimeError('{0} does not exist in the maya session'.format(driven))
        driven = [driven]

    # if bake is off, snap a single frame
    if not bake:
        for each in driven:
            match_tranformation(driver, each, translate, rotate)

    # else
    else:
        # query the user's auto key state
        autokey_enabled = cmds.autoKeyframe(query=True, state=True)
        # query the current frame
        current_frame = get_current_frame()
        # set the keyable attributes
        attributes = []
        if translate:
            attributes.append("translate")
        if rotate:
            attributes.append("rotate")

        # turn off auto key. this is because for some reason using this bake process, the current
        # frame doesn't get correctly snapped with autokey on
        cmds.autoKeyframe(state=False)

        # loop through the time range
        start, end = get_timeline_range()
        for i in range(start, (end + 1)):
            # change the frame
            cmds.setAttr("time1.outTime", int(i))
            # loop through the selection and locator lists
            for each in driven:
                # snap the locator to the selection
                match_tranformation(driver, each, translate, rotate)
                # key the locator
                cmds.setKeyframe(each,
                                 time=i,
                                 shape=False,
                                 attribute=attributes)

        # restore the current frame
        cmds.setAttr("time1.outTime", current_frame)
        # restore the autokey
        cmds.autoKeyframe(state=autokey_enabled)


def get_keyable_attributes(node, skip=["visibility", "scaleX", "scaleY", "scaleZ"]):
    """This function will return all keyable attribues on a node. Option to skip attributes"""

    # get all keyable attributes on the node
    keyable_attrs = cmds.listAttr(node, keyable=True, unlocked=True)
    # remove the given skip attributes from the list
    attrs = [attr for attr in keyable_attrs if attr not in skip]
    # return the keyable attributes
    return attrs


def get_skip_attributes(node):
    """Determines the attributes to skip when applying a constraint to a node"""

    # get all keyable attribute
    keyable_attrs = get_keyable_attributes(node)
    # create lists to hold the skippable attrs
    trs_skip = ["x", "y", "z"]
    rot_skip = ["x", "y", "z"]
    # loop through all the key-able attributes
    for attr in keyable_attrs:
        # remove items from the skip lists if they're key able
        if "translate" in attr:
            trs_skip.remove(attr.replace("translate", "").lower())
        if "rotate" in attr:
            rot_skip.remove(attr.replace("rotate", "").lower())
    # if there are no attributes to skip, change the value to 'none'
    if not trs_skip:
        trs_skip = "none"
    if not rot_skip:
        rot_skip = "none"

    # return the skip values
    return trs_skip, rot_skip


def set_world_tranforms(node, translate=None, rotate=None):
    # instantiate a MFnTransform for the driver and driven nodes
    node_m_trs = OpenMaya.MFnTransform(get_dag_path(node))

    if translate:
        # set the driven translation to the given value
        node_m_trs.setTranslation(translate, OpenMaya.MSpace.kWorld)

    if rotate:
        # set the driven translation to the given value
        node_m_trs.setRotation(rotate, OpenMaya.MSpace.kWorld)


def get_world_transforms(node):
    """Return translation and rotation"""
    node_dag = get_dag_path(node)
    node_m_trs = OpenMaya.MFnTransform(node_dag)
    node_m_mtx = node_dag.inclusiveMatrix()
    node_m_trsmtx = OpenMaya.MTransformationMatrix(node_m_mtx)

    translation = OpenMaya.MVector(node_m_trs.rotatePivot(OpenMaya.MSpace.kWorld))
    rotation = node_m_trsmtx.rotation()

    return translation, rotation


def match_tranformation(driver, driven, translate=True, rotate=True):
    """Matches the worldspace translation and rotation of a driven node to the driver node"""

    # get the DAG path of the driver
    driver_dag = get_dag_path(driver)
    # instantiate a MFnTransform for the driver and driven nodes
    driven_m_trs = OpenMaya.MFnTransform(get_dag_path(driven))
    driver_m_trs = OpenMaya.MFnTransform(driver_dag)
    # get the world and MTransformation matrices of the driver
    driver_m_mtx = driver_dag.inclusiveMatrix()
    driver_m_trsmtx = OpenMaya.MTransformationMatrix(driver_m_mtx)

    # if snapping translation
    if translate:
        # get the rotate pivot vector of the driver
        driver_rp = OpenMaya.MVector(driver_m_trs.rotatePivot(OpenMaya.MSpace.kWorld))
        # set the driven translation to that of the vector
        driven_m_trs.setTranslation(driver_rp, OpenMaya.MSpace.kWorld)

    # if snapping rotation
    if rotate:
        # get the rotation values from the driver transformation matrix and apply it to the driven
        driven_m_trs.setRotation(driver_m_trsmtx.rotation(), OpenMaya.MSpace.kWorld)


def create_locator(name):
    """A simple wrapper function to create a locater and rename it"""

    # create the locater
    shape = cmds.createNode("locator")
    # rename it
    transform = cmds.rename(cmds.listRelatives(shape, parent=True), name)

    return transform


def locator_from_list(nodes):
    # ensure nodes is a list of transforms that exist in the maya session
    if not isinstance(nodes, list):
        raise TypeError("You must pass a list | tuple of transforms")
    for node in nodes:
        if not cmds.objExists(node):
            raise RuntimeError("{0} does not exist in this maya session".format(node))
        if cmds.nodeType(node) != "transform":
            raise TypeError("You must pass a list | tuple of transforms")

    # loop through the nodes
    locators = []
    for node in nodes:
        # query the rotation order of the node
        roo = cmds.xform(node, query=True, rotateOrder=True)
        # concatenate a nice new name for the locator
        locator = "{0}_loc".format(node.replace(":", "_"))
        # create the locater
        locators.append(create_locator(locator))
        # match its rotation order to the nodes
        cmds.xform(locator, rotateOrder=roo)
        # snap the locater to the node
        match_tranformation(node, locator)

    # if the number of newly create locater's don't match the number of selected objects,
    # something went wrong
    if len(nodes) != len(locators):
        raise RuntimeError("Something when wrong when creating the locators")

    # return the locater's
    return locators


# ----Timeline Functions----------------------------------------------------------------------------
def get_timeline_range():
    '''Returns integer values of start a and end of maya's timeline'''
    _min = int(OpenMayaAnim.MAnimControl.minTime().value())
    _max = int(OpenMayaAnim.MAnimControl.maxTime().value())
    return _min, _max


def get_current_frame():
    '''Returns integer values of start a and end of maya's timeline'''
    _current = int(OpenMayaAnim.MAnimControl.currentTime().value())
    return _current


def disable_viewport(func):
    """
    Decorator - turn off Maya display while func is running.
    if func will fail, the error will be raised after.
    """
    @wraps(func)
    def wrap(*args, **kwargs):

        # Turn $gMainPane Off:
        mel.eval("paneLayout -e -manage false $gMainPane")

        # Decorator will try/except running the function.
        # But it will always turn on the viewport at the end.
        # In case the function failed, it will prevent leaving maya viewport off.
        try:
            return func(*args, **kwargs)
        except Exception:
            # will raise original error
            raise
        finally:
            mel.eval("paneLayout -e -manage true $gMainPane")

    return wrap


# ----Other Functions-------------------------------------------------------------------------------
def get_aim_position(node, vec=OpenMaya.MVector(0, 1, 0), distance=40):
    """calculate the worldspace position of a point at a given distance along a given objects
    local axis"""
    pos = cmds.xform(node, query=True, translation=True, worldSpace=True, absolute=True)
    pos_vector = OpenMaya.MVector(*pos)
    aim_vector = local_vector_to_worldspace(node, vec)

    aim_pos_vector = pos_vector + (aim_vector * distance)
    return aim_pos_vector


def get_distance_between(node1, node2):
    '''Returns the distance between the two objects'''
    node1_pnt = cmds.xform(node1, query=True, translation=True, worldSpace=True, absolute=True)
    node2_pnt = cmds.xform(node2, query=True, translation=True, worldSpace=True, absolute=True)

    # find the difference in each axis
    dx = node1_pnt[0] - node2_pnt[0]
    dy = node1_pnt[1] - node2_pnt[1]
    dz = node1_pnt[2] - node2_pnt[2]

    # calculate distance
    dist = math.sqrt((dx * dx) + (dy * dy) + (dz * dz))

    # return the calculated distance
    return dist


def flatten_anim_curve(curve_list, startframe, endframe):
    """Flattens a list of animation curves and sets in and out frames to zero.
    (based on the current frame range)"""

    # Flattens animation curve at zero and deletes un-needed keys in the play range
    for curve in curve_list:
        cmds.setKeyframe(curve, time=startframe - 1, insert=True)
        cmds.setKeyframe(curve, time=endframe + 1, insert=True,)
        cmds.cutKey(curve, time=(startframe, endframe))
        cmds.setKeyframe(curve, time=startframe, value=0, outTangentType='linear')
        cmds.setKeyframe(curve, time=endframe, value=0, inTangentType='linear')


def get_facerig_characters_abs():
    """Get all the facerig characters in the scene using grp_char and FACERIGBuiltBy strings."""
    characters = []
    for namespace in get_namespaces():
        ls_wildcard = "{0}:*".format(namespace)
        if namespace == ':':
            ls_wildcard = ":*"
        namespace_nodes = cmds.ls(ls_wildcard, transforms=True, long=True)
        for node in namespace_nodes:
            node_split = node.split('|')

            if len(node_split) == 1:
                continue
            grandparent = node_split[1]
            # Look for this attribute
            attr = __CADET__.GetPackagePropertyValue(__CADET_PKG__, 'RigBuiltAttribute')
            if attr in cmds.listAttr(grandparent):
                if grandparent.find(':') == -1:
                    characters.append(':{0}'.format(grandparent))
                else:
                    namespace = grandparent.split(':')[0]
                    characters.append(namespace)
                break
    return characters


def get_facerig_characters():
    """Get all the facerig characters in the scene using grp_char and FACERIGBuiltBy strings."""
    characters = []
    for namespace in get_namespaces():
        ls_wildcard = "{0}:*".format(namespace)
        if namespace == ':':
            ls_wildcard = ":*"
        namespace_nodes = cmds.ls(ls_wildcard, transforms=True, long=True)
        for node in namespace_nodes:
            node_split = node.split('|')

            if len(node_split) == 1:
                continue
            grandparent = node_split[1]
            # Look for this attribute
            if 'FACERIGBuiltBy' in cmds.listAttr(grandparent):
                if grandparent.find(':') == -1:
                    characters.append(':')
                else:
                    namespace = grandparent.split(':')[0]
                    characters.append(namespace)
                break
    if characters:
        return characters
    else:
        return get_namespaces()

def get_facerig_controls(namespace, filter_tongue=True):
    ingnore_ctls = [u'tongue_04_fk_ctl', u'tongue_03_fk_ctl',
                   u'tongue_02_fk_ctl', u'tongue_01_fk_ctl']
    controls = []
    for ctl in cmds.ls('{0}:*_ctl'.format(namespace)):
        if filter_tongue:
            if ctl.split(':')[-1] in ingnore_ctls:
                continue
        controls.append(ctl)
    return controls

def get_current_selected_namespace():
    selection = cmds.ls(selection=True)
    if not selection:
        assert False, "Select a character or some part of one!"

    ctl = selection[0]
    if ':' in ctl:
         return ctl.split(':')[0]
    return ':'


def get_namespaces():
    """ returns a list of namespaces in the scene """
    # set to the root ":" so that we list all namespaces in the root only.
    stored_namespace = cmds.namespaceInfo(currentNamespace=True)

    cmds.namespace(setNamespace=':')
    all_namespaces = cmds.namespaceInfo(listOnlyNamespaces=True, recurse=False)
    namespaces = [ns for ns in all_namespaces if ns not in ['UI', 'shared']]

    used_namespaces = [':']
    for _namespace in namespaces:
        cmds.namespace(setNamespace=':')
        cmds.namespace(setNamespace=_namespace)
        # if there are any objects in the namespace then return otherwise we don't need it.
        if cmds.namespaceInfo(listOnlyDependencyNodes=True):
            used_namespaces.append(_namespace)

    cmds.namespace(setNamespace=stored_namespace)
    return used_namespaces


def undo_able(func):
    """
    Decorator - block code into a chunk for easier undo
    """
    @wraps(func)
    def wrap(*args, **kwargs):
        try:
            cmds.undoInfo(openChunk=True)
            return func(*args, **kwargs)
        finally:
            cmds.undoInfo(closeChunk=True)

    return wrap


# undo statement context
class UndoContext(object):

    def __enter__(self):
        cmds.undoInfo(openChunk=True)
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        cmds.undoInfo(closeChunk=True)


class CallbacksPool:
    """Creates a singleton class to keep track of maya callbacks and be
    able to remove callback with one call.

    # To add callbacks to a maya scene:
    CallbacksPool.getInstance().add(self.some_function, "timeChanged")

    # To remove all callbacks from a maya scene:
    CallbacksPool.getInstance().remove_callbacks()
    """

    __instance = None

    @staticmethod
    def getInstance():
        """ Static access method. """
        if CallbacksPool.__instance is None:
            CallbacksPool()
        return CallbacksPool.__instance

    def __init__(self):
        """Virtually private constructor."""
        if CallbacksPool.__instance is not None:
            raise Exception("Callback Singleton Class.")
        else:
            self.callback_pool = {}
            CallbacksPool.__instance = self

    def add(self, method, name="timeChanged"):
        '''Creates a callback and adds to the callback  pool dictionary'''
        idx = OpenMaya.MEventMessage.addEventCallback(name, method)
        self.callback_pool[idx] = method

    def get(self):
        """Returns the callbacks pool dictionary """
        return self.callback_pool

    def remove_callbacks(self):
        """Removes all callbacks in the singleton class."""
        log.info('Removing callbacks from scene. {}'.format(len(self.callback_pool.keys())))
        for idx in self.callback_pool.keys():
            OpenMaya.MEventMessage.removeCallback(idx)
        self.callback_pool.clear()


def set_maya_prefs(*args, **kwargs):
    cmds.currentUnit(time='ntsc')


def set_scene_prefs():
    CallbacksPool.getInstance().add(set_maya_prefs, "NewSceneOpened")


def get_current_framerate():
    '''
    get the current frame rate in integer not strings
    '''
    framerate = __FRAMERATES__[cmds.currentUnit(query=True, time=True)]
    return int(framerate)
