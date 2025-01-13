import QtQuick
import "."
import QtQuick.Layouts

Item {
    id: control
    KeyInput {
        id: keyInput
    }

    StyleButton {
        buttonBackgroundColor: "black"
        fontColor: "white"
        anchors.top: keyInput.bottom
        anchors.left: keyInput.left
        anchors.right: keyInput.right
        anchors.margins: 5
        width: parent.width * 0.7
        height: parent.height * 0.07
        text: "Submit"
        font.pixelSize: 16
        // font.pixelSize:32
        onClicked: {
            if (keyInput.length < 4) {
                errorPopup.open()
            } else {

                confirmPopup.open()
            }
        }
    }
    StylePopUp {
        id: errorPopup
        anchors.centerIn: parent
        width: parent.width * 0.7
        height: parent.height * 0.5
        font.pixelSize: 16
        text: "Error : Please Enter your Stockage Key first :)"
        StyleButton {
            anchors {
                top: parent.bottom
                left: parent.left
                right: parent.right
                margins: 15
                // horizontalCenter:parent.horizontalCenter
            }
            height: rootWindow.height * 0.07
            buttonBackgroundColor: "black"
            fontColor: "white"
            text: "Ok"
            onClicked: {
                errorPopup.close()
            }
        }
    }

    StylePopUp {
        id: confirmPopup
        anchors.centerIn: parent
        width: parent.width * 0.7
        height: parent.height * 0.5
        text: "Confirmation : Are sure the key is correct?"
        RowLayout {
            anchors {
                top: parent.bottom
                left: parent.left
                right: parent.right
                margins: 15
                // horizontalCenter:parent.horizontalCenter
            }
            height: rootWindow.height * 0.07
            spacing: 15
            StyleButton {
                Layout.fillWidth: true
                Layout.fillHeight: true
                buttonBackgroundColor: "black"
                fontColor: "white"
                text: "Yes"
                font.pixelSize: 16
                onClicked: {
                    confirmPopup.close()
                }
            }
            StyleButton {
                Layout.fillWidth: true
                Layout.fillHeight: true
                buttonBackgroundColor: "black"
                fontColor: "white"
                text: "No"
                font.pixelSize: 16
                onClicked: {
                    confirmPopup.close()
                }
            }
        }
    }
}
