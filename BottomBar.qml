import QtQuick
import QtQuick.Layouts

Rectangle {
    anchors {
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    height: parent.height * 0.1
    topLeftRadius: 16
    topRightRadius: 16
    color: "black"

    RowLayout {
        anchors.fill: parent

        StyleButton {
            Layout.fillWidth: true
            text: "New"
            buttonBackgroundColor: "black"
            fontColor: "white"
        }
        StyleButton {
            Layout.fillWidth: true
            text: "Delete"
            buttonBackgroundColor: "black"
            fontColor: "white"
        }
        StyleButton {
            Layout.fillWidth: true
            text: "View"
            buttonBackgroundColor: "black"
            fontColor: "white"
        }
        StyleButton {
            Layout.fillWidth: true
            text: "Help"
            buttonBackgroundColor: "black"
            fontColor: "white"
        }
    }
}
