import QtQuick 2.15

Item {
    id: root
    width: 800
    height: 600

    Rectangle {
        id: rect
        x: 100; y: 100
        height: textInputElement.height + 10
        width: textInputElement.width
        color: "#d6dcf4"
    }

    TextInput {
        id: textInputElement
        x: 100
        y: 100
        text: "Enter text"
        color: "#5b4791"
        font.pixelSize: 32
        font.bold: true
    }
}
