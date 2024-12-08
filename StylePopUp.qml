import QtQuick

import QtQuick.Controls
Popup {
    id:control
    property string text: "Wait! What?"
    Text
    {
        width:parent.width*0.8
        anchors.centerIn:parent
        text:control.text
        font.pixelSize:28
        horizontalAlignment:Text.AlignHCenter
        verticalAlignment:Text.AlignVCenter
        wrapMode:Text.WordWrap
    }
    background:Rectangle
    {
        radius:16
        color:"white"
    }
}
