import os
from maya import cmds

from facerig.code_step import CodeStep


class SetupEyeLookAt(CodeStep):
    def initialization(self):
        self.left_eye_joint = self.static_data.joint_names.eye_left_joint
        self.right_eye_joint = self.static_data.joint_names.eye_right_joint
        self.head_joint = self.static_data.joint_names.head_joint
        self.fk_placement_root = 'au_eyes_ctl_parent_grp'
        self.eye_action_units = ['NL_61', 'NL_62', 'NL_63', 'NL_64', 'NR_61', 'NR_62', 'NR_63', 'NR_64']

    @property
    def description(self):
        return "Setup Eye Look At"

    def _run(self):
        self.import_eyes_aim_asset()
        self.create_lookat_placement_guides()
        self.place_lookat_rig()
        self.create_eye_control_heirarchy()
        self.connect_sightlines()
        self.connect_lookat_rig()
        self.delete_lookat_placement_guides()
        self.place_au_eyes_controls()
        self.orient_au_eyes_controls()
        self.constrain_au_eyes_controls()
        self.constrain_plot_to_lookat()
        self.setup_scaling()
        self.disable_lookat_by_default()

        # Add LookAt to "Controls" display layer.
        cmds.editDisplayLayerMembers('Controls', 'grp_controls_lookat_AITrajectory_world', 'lookat_sightlines')

    @staticmethod
    def snap_objects(objects=None):
        # Snaps lists of objects via parent constraint.
        # Useful for getting center position of two or more objects.
        objects = objects or []
        snap_constraint = cmds.parentConstraint(objects)
        cmds.delete(snap_constraint)

    def import_eyes_aim_asset(self):
        # Import maya ASCII file that contains all working components for the eye aim rig.
        cmds.file(self.static_data.prefab_paths.rig_data_relative_lookat_control_setup,
                  i=True,
                  ignoreVersion=True)

    def create_lookat_placement_guides(self):
        # Create null guide objects, used to place and orient the eye aim system.
        main_lookat_rig_orient_guide = cmds.group(name='main_lookat_orientGuide', empty=True)
        left_lookat_rig_orient_guide = cmds.group(name='left_lookat_orientGuide', empty=True)
        right_lookat_rig_orient_guide = cmds.group(name='right_lookat_orientGuide', empty=True)
        self.snap_objects([self.left_eye_joint, self.right_eye_joint, main_lookat_rig_orient_guide])
        self.snap_objects([self.left_eye_joint, left_lookat_rig_orient_guide])
        self.snap_objects([self.right_eye_joint, right_lookat_rig_orient_guide])

    @staticmethod
    def delete_lookat_placement_guides():
        # Delete null guide objects, used to place and orient the eye aim system.
        cmds.delete(['main_lookat_orientGuide', 'left_lookat_orientGuide', 'right_lookat_orientGuide'])

    def place_lookat_rig(self):
        # Place the eye aim rig in 3D space according to null guide objects.
        self.snap_objects(['main_lookat_orientGuide', 'lookat_system_orient'])
        self.snap_objects(['main_lookat_orientGuide', 'lookat_system_orient'])
        self.snap_objects(['left_lookat_orientGuide', 'L_lookat_system_orient'])
        self.snap_objects(['left_lookat_orientGuide', 'L_lookat_system_orient'])
        self.snap_objects(['right_lookat_orientGuide', 'R_lookat_system_orient'])
        self.snap_objects(['right_lookat_orientGuide', 'R_lookat_system_orient'])

        # Re-orient "system_orient" groups, to work with control orientation.
        groups_to_orient = ['lookat_system_orient', 'L_lookat_system_orient', 'R_lookat_system_orient']
        for group_ in groups_to_orient:
            axis_values = []
            rotates = ['rx', 'ry', 'rz']
            for axis in rotates:
                axis_value = cmds.getAttr(group_ + '.' + axis)
                axis_values.append(axis_value)
            cmds.setAttr(group_ + '.rx', - axis_values[1])
            cmds.setAttr(group_ + '.ry', 0)
            cmds.setAttr(group_ + '.rz', 0)

    @staticmethod
    def create_eye_control_heirarchy():
        # Place control and rig groups correctly in the scene hierarchy.
        cmds.parent('L_lookat_system_orient', 'lookat_ctl')
        cmds.parent('R_lookat_system_orient', 'lookat_ctl')
        cmds.parent('L_lookat_loc_grp', 'lookat_rig_grp')
        cmds.parent('R_lookat_loc_grp', 'lookat_rig_grp')
        cmds.parent('L_Eye_upVec_grp', 'lookat_rig_grp')
        cmds.parent('R_Eye_upVec_grp', 'lookat_rig_grp')
        cmds.parent('EyeCenter_loc_grp', 'lookat_rig_grp')
        cmds.parent('EyeCenter_upVec_grp', 'lookat_rig_grp')

        cmds.parent('LocalSpace_parent_loc_placement', 'lookat_rig_grp')
        cmds.parent('grp_control_eyes', 'grp_controls')

    def connect_sightlines(self):
        cmds.parentConstraint('EyeCenter_loc', 'eyes_distance_start')
        cmds.parentConstraint(self.left_eye_joint, 'left_eye_distance_start')
        cmds.parentConstraint(self.right_eye_joint, 'right_eye_distance_start')

    def connect_lookat_rig(self):
        # Connects custom ranges
        cmds.connectAttr('hlp_eye_look_range.NL_61_Min', 'lookat_custom_range_plug.NL_61_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_61_Max', 'lookat_custom_range_plug.NL_61_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_62_Min', 'lookat_custom_range_plug.NL_62_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_62_Max', 'lookat_custom_range_plug.NL_62_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_63_Min', 'lookat_custom_range_plug.NL_63_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_63_Max', 'lookat_custom_range_plug.NL_63_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_64_Min', 'lookat_custom_range_plug.NL_64_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NL_64_Max', 'lookat_custom_range_plug.NL_64_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_61_Min', 'lookat_custom_range_plug.NR_61_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_61_Max', 'lookat_custom_range_plug.NR_61_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_62_Min', 'lookat_custom_range_plug.NR_62_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_62_Max', 'lookat_custom_range_plug.NR_62_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_63_Min', 'lookat_custom_range_plug.NR_63_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_63_Max', 'lookat_custom_range_plug.NR_63_Max', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_64_Min', 'lookat_custom_range_plug.NR_64_Min', force=True)
        cmds.connectAttr('hlp_eye_look_range.NR_64_Max', 'lookat_custom_range_plug.NR_64_Max', force=True)

        cmds.connectAttr('hlp_control_lookat_output.NL_61', 'hlp_output.NL_61', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NL_62', 'hlp_output.NL_62', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NL_63', 'hlp_output.NL_63', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NL_64', 'hlp_output.NL_64', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NR_61', 'hlp_output.NR_61', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NR_62', 'hlp_output.NR_62', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NR_63', 'hlp_output.NR_63', force=True)
        cmds.connectAttr('hlp_control_lookat_output.NR_64', 'hlp_output.NR_64', force=True)

        # Connect enable lookAt to main visibility control
        cmds.connectAttr('control_vis.enable_lookat', 'au_eyes_ctl.look_at_enabled')
        cmds.connectAttr('control_vis.enable_lookat', 'lookat_enabled_reverse.inputX')
        cmds.connectAttr('control_vis.Eyes', 'au_eyes_ctl_parent_grp.visibility')

        # Parent constrain the master eye aim group to the "Head" joint
        cmds.parentConstraint('Head', 'lookat_rig_grp', maintainOffset=True)

        # Aim constrain the local and world eye aim controls to always point toward the "Head" joint.
        cmds.aimConstraint('EyeCenter_loc', 'lookat_ctl', maintainOffset=True, aimVector=[0, 0, -1],
                           upVector=[0, 1, 0], worldUpType="objectrotation", worldUpVector=[1, 0, 0],
                           worldUpObject='EyeCenter_loc')

        # Adds two aim constraints required for the sight line extension feature.
        cmds.aimConstraint(self.left_eye_joint, 'L_sightline_extend_grp', aimVector=[0, 0, -1], upVector=[0, 1, 0],
                           worldUpType="object", worldUpObject='L_sightline_extend_up_vector')
        cmds.aimConstraint(self.right_eye_joint, 'R_sightline_extend_grp', aimVector=[0, 0, -1], upVector=[0, 1, 0],
                           worldUpType="object", worldUpObject='R_sightline_extend_up_vector')

        # Locks rotation on eye aim control
        cmds.setAttr("lookat_ctl.r", lock=True)

    def place_au_eyes_controls(self):
        control_placement_list = [self.left_eye_joint, self.right_eye_joint, self.fk_placement_root]
        self.snap_objects(control_placement_list)

    @staticmethod
    def orient_au_eyes_controls():
        cmds.setAttr('au_eyes_ctl_placement_offset.tz', 6)
        cmds.setAttr('au_eyes_ctl_placement_grp.rx', -90)
        cmds.setAttr('au_eyes_ctl_placement_grp.ry', -90)

    def constrain_au_eyes_controls(self):
        cmds.parentConstraint(self.head_joint, 'au_eyes_ctl_placement_grp', maintainOffset=True)

    def constrain_plot_to_lookat(self):
        cmds.parentConstraint(self.head_joint, 'C_absolute_direction_constrained_grp', maintainOffset=True)
        cmds.parentConstraint(self.head_joint, 'L_absolute_direction_constrained_grp', maintainOffset=True)
        cmds.parentConstraint(self.head_joint, 'R_absolute_direction_constrained_grp', maintainOffset=True)

        cmds.parentConstraint(self.head_joint, 'convergence_constrained_grp', maintainOffset=True)

    def setup_scaling(self):
        # We have a requirement to support scaling of our rig and therefore we need reparent a few nodes to
        # ensure the rig scales in accordance with the character
        scale_nodes = ["AITrajectory", "Neck", "Neck1", self.head_joint]

        for i in range(len(scale_nodes)):
            scale_node_grp_name = "grp_controls_lookat_{0}_world".format(scale_nodes[i])
            node_pos = cmds.xform(scale_nodes[i], q=True, ws=True, t=True)
            scale_node_grp = cmds.createNode("transform", n=scale_node_grp_name)
            cmds.xform(scale_node_grp, ws=True, t=node_pos)
            cmds.connectAttr("{0}.scale".format(scale_nodes[i]), "{0}.scale".format(scale_node_grp_name), f=True)
            if i > 0:
                cmds.parent(scale_node_grp_name, "grp_controls_lookat_{0}_world".format(scale_nodes[i - 1]))

        cmds.parent("lookat_ctl_grp", "grp_controls_lookat_{0}_world".format(scale_nodes[-1]))
        cmds.parent("au_eyes_ctl_parent_grp", "grp_controls_lookat_{0}_world".format(scale_nodes[-1]))
        cmds.parent("grp_controls_lookat_{0}_world".format(scale_nodes[0]), "grp_controls")

        cmds.parent('calculate_plot_to_lookat', 'grp_control_eyes')
        cmds.parent('calculate_convergence', 'grp_control_eyes')

        cmds.scaleConstraint(self.head_joint,
                             "grp_controls_lookat",
                             maintainOffset=False)
        cmds.parentConstraint(self.head_joint,
                              "grp_controls_lookat",
                              maintainOffset=True)

        cmds.parentConstraint('AITrajectory',
                              'grp_controls_lookat_AITrajectory_world',
                              maintainOffset=True)

        cmds.parent('grp_controls_lookat_AITrajectory_world', 'grp_control_eyes')

    @staticmethod
    def disable_lookat_by_default():
        cmds.setAttr('control_vis.enable_lookat', 0)

    def base_check_eye_lookat_file(self):
        if not os.path.exists(self.static_data.prefab_paths.rig_data_relative_lookat_control_setup):
            msg = "File doesn't exist: {}".format(self.static_data.prefab_paths.rig_data_relative_lookat_control_setup)
            raise self.FaceRigCheckError(msg)

    def ready_check_eye_right_joint(self):
        if not cmds.objExists(self.static_data.joint_names.eye_right_joint):
            msg = "Eye joint '{}' doesn't exist".format(self.static_data.joint_names.eye_right_joint)
            raise self.FaceRigCheckError(msg)

    def ready_check_eye_left_joint(self):
        if not cmds.objExists(self.static_data.joint_names.eye_left_joint):
            msg = "Eye joint '{}' doesn't exist".format(self.static_data.joint_names.eye_left_joint)
            raise self.FaceRigCheckError(msg)
