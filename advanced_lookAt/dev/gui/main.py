# from facerig_anim.libs.widgets import qt_gui
# from facerig_anim.libs import telemetry
#from facerig_anim.maya.look_at import gui
import gui

def show():
    print "WASSSUP!!!!"
    # telemetry.tack_event({'tool': gui.tool_data.get('name')})
    # qt_gui.delete_maya_tool(gui.tool_data.get('object_name'))
    diag = gui.LookAtTool()
    diag.show()
