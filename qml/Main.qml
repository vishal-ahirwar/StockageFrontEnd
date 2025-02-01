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
    }
}
