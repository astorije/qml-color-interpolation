import QtQuick 1.1
import "components"
import "ColorInterpolation"

Rectangle {
    width: 500
    height: 475

    // -------------------
    // BASIC INTERPOLATION
    // -------------------

    ColorInterpolation {
        id: colorInterpolation1
        stops: [
            InterpolationStop { position: 0.0; color: "lime" },
            InterpolationStop { position: 1.0; color: Qt.darker("lime") }
        ]
    }

    ColorSlider {
        id: slider1
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lime" }
            GradientStop { position: 1.0; color: Qt.darker("lime") }
        }
        x: 50
        y: 50
        onMouseXChanged: value = Math.max(0.0, Math.min(mouseY / height, 1.0));
    }

    Rectangle {
        color: "lime"
        width: 40
        height: 5
        x: 100
        y: 50 - height / 2
    }

    Rectangle {
        color: "green"
        width: 40
        height: 5
        x: 100
        y: 50 + slider1.height - height / 2
    }

    Rectangle {
        width: 100
        height: 100
        x: 50
        y: 325
        color: colorInterpolation1.getColorAt(slider1.value)
    }

    // -------------------------------------
    // INTERPOLATION BETWEEN MULTIPLE COLORS
    // -------------------------------------

    ColorInterpolation {
        id: colorInterpolation2
        stops: [
            InterpolationStop { position: 0/6; color: "red" },
            InterpolationStop { position: 1/6; color: "magenta" },
            InterpolationStop { position: 2/6; color: "blue" },
            InterpolationStop { position: 3/6; color: "cyan" },
            InterpolationStop { position: 4/6; color: "lime" },
            InterpolationStop { position: 5/6; color: "yellow" },
            InterpolationStop { position: 6/6; color: "red" }
        ]
    }

    ColorSlider {
        id: slider2
        gradient: Gradient {
            GradientStop { position: 0/6; color: "red" }
            GradientStop { position: 1/6; color: "magenta" }
            GradientStop { position: 2/6; color: "blue" }
            GradientStop { position: 3/6; color: "cyan" }
            GradientStop { position: 4/6; color: "lime" }
            GradientStop { position: 5/6; color: "yellow" }
            GradientStop { position: 6/6; color: "red" }
        }

        x: 200
        y: 50
        onMouseXChanged: value = Math.max(0.0, Math.min(mouseY / height, 1.0));
    }

    Rectangle {
        color: "red"
        width: 40
        height: 5
        x: 250
        y: 50 - height / 2
    }

    Rectangle {
        color: "magenta"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 1/6 - height / 2
    }

    Rectangle {
        color: "blue"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 2/6 - height / 2
    }

    Rectangle {
        color: "cyan"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 3/6 - height / 2
    }

    Rectangle {
        color: "lime"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 4/6 - height / 2
    }

    Rectangle {
        color: "yellow"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 5/6 - height / 2
    }

    Rectangle {
        color: "red"
        width: 40
        height: 5
        x: 250
        y: 50 + slider2.height * 6/6 - height / 2
    }

    Rectangle {
        width: 100
        height: 100
        x: 200
        y: 325
        color: colorInterpolation2.getColorAt(slider2.value)
    }

    // --------------------------
    // OUT-OF-RANGE INTERPOLATION
    // --------------------------

    ColorSlider {
        id: slider3
        gradient: Gradient {
            GradientStop { position: 0.4; color: "lavender" }
            GradientStop { position: 0.6; color: "darkslateblue" }
        }
        x: 350
        y: 50
        onMouseXChanged: value = Math.max(0.0, Math.min(mouseY / height, 1.0));
    }

    Rectangle {
        color: "lavender"
        width: 40
        height: 5
        x: 400
        y: 50 + slider3.height * 0.4 - height / 2
    }

    Rectangle {
        color: "darkslateblue"
        width: 40
        height: 5
        x: 400
        y: 50 + slider3.height * 0.6 - height / 2
    }

    ColorInterpolation {
        id: colorInterpolation3
        stops: [
            InterpolationStop { position: 0.4; color: "lavender" },
            InterpolationStop { position: 0.6; color: "darkslateblue" }
        ]
    }

    Rectangle {
        width: 100
        height: 100
        x: 350
        y: 325
        color: colorInterpolation3.getColorAt(slider3.value)
    }
}
