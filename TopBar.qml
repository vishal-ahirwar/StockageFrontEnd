import QtQuick


Rectangle
{
    anchors
    {
        left:parent.left
        right:parent.right
        top:parent.top
    }
    height:parent.height*0.1
    color:"black"
    Text
    {
        text:"Stockage"
        color:"white"
        anchors.centerIn:parent
        horizontalAlignment:Text.AlignHCenter
        verticalAlignment:Text.AlignVCenter
        font.pixelSize:28
    }
}
