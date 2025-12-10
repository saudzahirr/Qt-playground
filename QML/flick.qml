import QtQuick 2.15

Flickable {
    id: flick
    width: 400
    height: 400
    contentWidth: img.width
    contentHeight: img.height

    Image {
        id: img
        source: "assets/Horizontal Card.png"
    }
}