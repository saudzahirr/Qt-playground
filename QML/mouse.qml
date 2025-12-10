import QtQuick 2.15

Rectangle {
    id: root
    width: 360
    height: 360
    color: "pink"

    Item {
        id: btn

        width: ok.width + cancel.width + 10
        height: 50

        anchors.centerIn: parent

        Rectangle {
            id: ok
            width: 150
            height: parent.height
            color:  mouse.pressed ? "grey" : "white"
            radius: 16

            Text {
                text: "OK"
                anchors.centerIn: parent
                font.pixelSize: 20
            }

            MouseArea {
                id: mouse
                anchors.fill: ok
                // onPressed: parent.color = "grey"
                // onReleased: parent.color = "white"
            }
        }

        Rectangle {
            id: cancel
            width: 150
            height: parent.height
            color: "lightgrey"
            radius: 16

            anchors.verticalCenter: ok.verticalCenter
            anchors.left: ok.right
            anchors.leftMargin: 10

            Text {
                id: buttonText
                text: "Cancel"
                anchors.centerIn: parent
                font.pixelSize: 20
            }

            MouseArea {
                anchors.fill: cancel
                onClicked: buttonText.font.bold = !buttonText.font.bold
            }
        }
    }
}
