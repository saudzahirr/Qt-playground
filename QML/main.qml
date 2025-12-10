import QtQuick 2.15
import QtQuick.Controls 2.15


Rectangle {
    id: root
    height: 500
    width: 500
    color: "lightblue"

    LineEdit {
        id: lineEdit
        color: "white"
        anchors.centerIn: root
    }

    Button {
        id: btn
        width: text.width + 4
        height: text.height
        text: "Clear"
        font.pixelSize: lineEdit.height / 2
        anchors {
            left: lineEdit.left
            top: lineEdit.bottom
            topMargin: 5
        }

        onClicked: {
            console.log(lineEdit.text)
            lineEdit.text = ""
        }
    }

    Text {
        width: lineEdit.width
        height: lineEdit.height
        anchors {
            left: btn.left
            top: btn.bottom
            topMargin: 5
        }
        text: "<b>INFO :</b> " + lineEdit.text
        font.pixelSize: height / 2
    }
}