import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "#222222"


    Text{
        text: "Hello World"
        color: "white"
        font.pixelSize: 50
        anchors.centerIn: parent
    }
}
