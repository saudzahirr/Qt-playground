import QtQuick 2.15

Rectangle {
    id: root
    width: 800
    height: 800
    color: "#ffffff"

    // Load pixel font
    FontLoader {
        id: pixelFont
        source: "fonts/Pixelify_Sans/static/PixelifySans-Regular.ttf"
    }

    Rectangle {
        id: mainContainer
        width: 425
        height: 300
        color: "#878d97"
        anchors.centerIn: parent

        Rectangle {
            id: sidePanel
            width: 400
            height: 300
            color: "#696f77"
            anchors.left: parent.left

            Rectangle {
                id: innerFrame
                width: sidePanel.width - 55
                height: sidePanel.height - 55
                color: "#21282b"
                anchors.centerIn: sidePanel

                Rectangle {
                    id: bottomBar
                    width: innerFrame.width
                    height: innerFrame.height - 15
                    color: "#343a3f"
                    anchors.bottom: parent.bottom

                    Text {
                        id: pixelText
                        text: "$ > qmake --version\nQMake version 3.1\nUsing Qt version 5.15.3 in /usr/lib/x86_64-linux-gnu"
                        font.family: pixelFont.name
                        font.pixelSize: 13
                        color: "white"
                        anchors {
                            top: bottomBar.top
                            left: bottomBar.left
                            leftMargin: 10
                            topMargin: 10
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        id: bottomBox
        width: 100
        height: 100
        color: "#343a3f"
        anchors.top: mainContainer.bottom
        anchors.horizontalCenter: mainContainer.horizontalCenter
    }

    Rectangle {
        id: baseBox
        width: 75
        height: 25
        color: "#21282b"
        anchors {
            top: bottomBox.bottom
            left: bottomBox.right
            leftMargin: -25
        }
    }

    Rectangle {
        id: base
        width: 150
        height: 25
        color: "#a8a8a8"
        anchors {
            right: baseBox.left
            top: bottomBox.bottom
        }
    }

    Rectangle {
        id: table
        width: root.width - 50
        height: 50
        color: "#8f8b8c"
        anchors {
            top: base.bottom
            right: root.right
        }
    }

    Rectangle {
        id: tableBase
        width: table.width
        height: table.height
        color: "#343a3f"
        anchors {
            top: table.bottom
            right: table.right
        }
    }

    Rectangle {
        id: tableLeg
        width: 25
        height: 150
        color: "#343a3f"
        anchors {
            top: tableBase.bottom
            left: tableBase.left
        }
    }
}
