import QtQuick 2.15
import QtQuick.Controls 2.15
import "."
ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Password Input with Pop-up"

    KeyInput
    {
        id:keyInput
    }

    StyleButton
    {
        anchors.top:keyInput.bottom
        anchors.left:keyInput.left
        anchors.right:keyInput.right
        anchors.margins:5
        width:parent.width*0.7
        height:parent.height*0.1
        text:"Submit"
        font.pixelSize:32
    }
}


