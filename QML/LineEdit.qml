import QtQuick 2.15

Rectangle {
    width: 300
    height: 50
    color: "white"
    radius: 5
    clip: true
    smooth: true

    // readonly property alias text: line.text
    property alias text: line.text

    TextInput {
        id: line
        width: parent.width
        height: parent.height
        color: focus ? "black" : "grey"
        text: "Enter text ..."
        font.pixelSize: parent.height - 4
        anchors.fill: parent
        anchors.margins: 2
    }
}