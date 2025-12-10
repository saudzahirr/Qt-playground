import QtQuick 2.15

Flickable {
    id: flick
    width: 400
    height: 400
    contentWidth: img.width
    contentHeight: img.height

    PinchArea {
        anchors.fill: parent
        pinch.target: img
        pinch.maximumScale: 1.0
        pinch.minimumScale: 0.1
        pinch.dragAxis: Pinch.XAndYAxis
    }

    Image {
        id: img
        source: "assets/Horizontal Card.png"
    }
}