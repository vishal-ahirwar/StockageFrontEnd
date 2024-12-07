import QtQuick
import QtQuick.Controls.Basic

Button
{
    id:control
    property color  buttonBackgroundColor: "white"
    property color  buttonOnPressedColor: "gray"
    property color fontColor: "black"
    contentItem:Text
    {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.fontColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background:Rectangle
    {
        color:control.down?control.buttonOnPressedColor:control.buttonBackgroundColor
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        radius:16
    }
}
