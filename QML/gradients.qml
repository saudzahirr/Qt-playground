import QtQuick 2.15

Rectangle {
    width: 500
    height: 500

    gradient: Gradient {
        // Default orientation is vertical.
        orientation: Gradient.Horizontal
        GradientStop {
            position: 0.0
            color: "green"
        }

        GradientStop {
            position: 0.25
            color: "lightgreen"
        }

        GradientStop {
            position: 1.0
            color: "blue"
        }
    }
}
