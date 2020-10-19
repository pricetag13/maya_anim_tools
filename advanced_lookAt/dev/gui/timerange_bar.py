import os

from PySide2 import QtWidgets
from PySide2.QtUiTools import QUiLoader

# from facerig_anim.maya.libs import maya_util
# from facerig_anim.libs import environment as env


class TimeRangeBar(QtWidgets.QWidget):
    """ Reusable class with a label, line edit and browse button """

    def __init__(self):
        super(TimeRangeBar, self).__init__()

        # Get the UI file
        root_path = os.path.dirname(os.path.abspath(__file__))
        ui_file = os.path.abspath("{0}/timerange_bar.ui".format(root_path))
        self.ui = QUiLoader().load(ui_file)

        layout = QtWidgets.QHBoxLayout()
        layout.addWidget(self.ui)
        layout.setMargin(0)
        layout.setSpacing(0)
        layout.setContentsMargins(0, 0, 0, 0)
        self.setLayout(layout)

        self.__init_default_values()
        self.__connections()

    def __init_default_values(self):
        """ sets default values in the ui """
        self.time_from_timeline()

    def __connections(self):
        self.ui.btn_from_timeline.clicked.connect(self.time_from_timeline)

    def time_from_timeline(self):
        """ gets the start and end frame from the timeline """
        min_frame, max_frame = maya_util.get_timeline_range()

        self.ui.sb_startframe.setValue(min_frame)
        self.ui.sb_endframe.setValue(max_frame)

    def get_timerange(self):
        """returns the values stored in the UI spin boxes"""
        return int(self.ui.sb_startframe.value()), int(self.ui.sb_endframe.value())
