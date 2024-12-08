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
        anchors.fill: parent
    }

    BottomBar {
        id: bottomBar
    }
}
