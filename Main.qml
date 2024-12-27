import QtQuick
import QtQuick.Controls
import "."

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Stockage"
    id: rootWindow
    AuthenticationPage {
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: bottomBar.top
        }
    }

    BottomBar {
        id: bottomBar
        Behavior on height {
            NumberAnimation {
                duration: 250
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.height = parent.height == rootWindow.height
                        * 0.02 ? rootWindow.height * 0.1 : rootWindow.height * 0.02
            }
        }
    }
}
