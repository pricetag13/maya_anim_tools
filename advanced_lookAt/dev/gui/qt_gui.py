"""
Library for various gui elements in mobu
"""
# from facerig_anim.libs import dcc
# current_dcc = dcc.get_current_dcc()

# if current_dcc == 'mobu':
#     from PySide.QtGui import QApplication, QWidget

# if current_dcc == 'maya':
from PySide2.QtWidgets import QApplication, QWidget, QMainWindow
from maya import OpenMayaUI
from shiboken2 import wrapInstance

__info_color__ = '#dcdcdc'  # white
__warning_color__ = '#b39800'  # orange
__error_color__ = '#bf0000'  # red


def set_status_message(status_bar, message, timeout, message_type=0):
    status_bar.setStyleSheet(r'QStatusBar{color:%s;font-weight:bold;}' % __info_color__)

    if message_type == 1:  # warning
        status_bar.setStyleSheet(r"QStatusBar{color:%s;font-weight:bold;}" % __warning_color__)

    if message_type == 2:  # error
        status_bar.setStyleSheet(r"QStatusBar{color:%s;font-weight:bold;}" % __error_color__)
    status_bar.showMessage(message, timeout=timeout)


def get_maya_window():
    ''' Get the maya main window as a QMainWindow instance '''
    window_pointer = OpenMayaUI.MQtUtil.mainWindow()
    # return the pointer as a maya object
    return wrapInstance(long(window_pointer), QMainWindow)


def find_pyside_tool(object_name):
    # get all top level windows:
    top_level_windows = QApplication.topLevelWindows()
    for w in top_level_windows:
        if object_name in w.objectName():
            return w
    return None


def delete_maya_tool(object_name):
    # get all top level windows:
    top_level_windows = QApplication.topLevelWindows()
    for w in top_level_windows:
        if object_name in w.objectName():
            w.setParent(None)
            w.deleteLater()


def delete_mobu_tool(tool_name):
    # get all top level windows:
    top_level_windows = QApplication.topLevelWidgets()
    # from this list, find the main application window.
    top_level_windows = QApplication.topLevelWidgets()
    for w in top_level_windows:
        if hasattr(w, 'tool_name'):
            if w.tool_name == tool_name:
                w.setParent(None)
                w.deleteLater()


def get_mobu_window(window_name='motionbuilder'):
    """
    Find the main Motionbuilder window/QWidget.  This
    will be used as the parent for all dialogs created
    by show_modal or show_dialog
    :returns: QWidget if found or None if not
    """
    # get all top level windows:
    top_level_windows = QApplication.topLevelWidgets()

    # from this list, find the main application window.
    top_level_windows = QApplication.topLevelWidgets()
    for w in top_level_windows:
        if type(w) == QWidget:
            if window_name in w.windowTitle().lower() and\
                                    w.parentWidget() == None:
                return w
    return None