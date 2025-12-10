import QtQuick 2.15

Item {
    width: 400
    height: 300

    Rectangle {
        x: 100; y: 100
        width: 200
        height: setHeight()
        color: "red"

        function setHeight() {
            console.log("Setting rectangle element height ...")
            return width / 2
        }
    }

    Rectangle {
        x: 180; y: 180
        width: 100
        height: setHeight()
        color: "blue"

        function setHeight() {
            console.log("Setting rectangle element height ...")
            return width / 2
        }
    }
}
