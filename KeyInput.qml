import QtQuick

TextInput
{
    anchors.centerIn:parent
    width:parent.width*0.7
    height:parent.height*0.2
    color:"black"
    horizontalAlignment:Qt.AlignHCenter
    verticalAlignment:Qt.AlignVCenter
    echoMode:TextInput.Password
    font.pixelSize:32
    clip:true
    Text
    {
        anchors.centerIn:parent
        text:parent.text.length==0?"Stockage Key":""
        font.pixelSize:32
        horizontalAlignment:Qt.AlignHCenter
        verticalAlignment:Qt.AlignVCenter
        color:"black"
    }
}
