import QtQuick
import QtQuick.Layouts

Rectangle {
    id: control
    anchors {
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    anchors.margins: 15
    height: parent.height * 0.1
    radius: 16

    color: "black"

    RowLayout {
        anchors.fill: parent

        StyleButton {
            Layout.fillWidth: true
            text: "New"
            buttonBackgroundColor: "black"
            fontColor: "white"
            font.pixelSize: 16
        }
        StyleButton {
            Layout.fillWidth: true
            text: "Delete"
            buttonBackgroundColor: "black"
            fontColor: "white"
            font.pixelSize: 16
        }
        StyleButton {
            Layout.fillWidth: true
            text: "View"
            buttonBackgroundColor: "black"
            fontColor: "white"
            font.pixelSize: 16
        }
        StyleButton {
            Layout.fillWidth: true
            text: "Help"
            buttonBackgroundColor: "black"
            fontColor: "white"
            font.pixelSize: 16
        }
    }
}
