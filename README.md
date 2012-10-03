qml-color-interpolation
=======================

A QtQuick/QML component to interpolate colors.

Installation
------------

There is no installation needed, the component is only made of QML and works out of the box.

Usage
-----

### Example

Run ColorInterpolationExample.qml with the Qt qmlviewer tool and play with the sliders to see the interpolated colors.

### How to integrate the ColorInterpolation

First, copy the ColorInterpolation folder in a path which is loaded with the QML engine and do not forget the `import "ColorInterpolation"`.

A ColorInterpolation and ColorStop work the same way Gradient and GradientStop work.
You need to provide several ColorStops inside a ColorInterpolation. ColorStop takes a standard color and a real indicating the color position in the interpolated range.
    
    ColorInterpolation {
        id: interpolation
        
        stops: [
            ColorStop { position: [...]; color: [...] }
            ...
        ]
    }
    
Then, you need to call `interpolation.getColorAt(value)` to get the interpolated color at the 'value' position of the range.

And, that's it!

License
-------

This project has been released under the LGPL 3 license.
Please refer to LICENSE.GPL and LICENSE.LGPL for more information.