import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property int offset: 2
    property int w: 100
    property int h: 150
    property int size: h * (1/3)
    property int r: 2

    Rectangle {
        id: btnBg
        width: w; height: h
        color: "lightgreen"
        radius: w / r

        Rectangle {
            id: btnToggle
            width: w - 2*offset; height: h - size
            x: offset; y: offset
            radius: w / r
            color: "green"
        }

        states: [
            State {
                name: "clicked"
                PropertyChanges { target: btnToggle; color: "red"; y: size - offset }
                PropertyChanges { target: btnBg; color: "pink" }
            }
        ]

        transitions: [
            Transition {
                from: "*"; to: "*"
                NumberAnimation { properties: "y"; easing.type: Easing.InOutQuad }
            }
        ]

        MouseArea {
            anchors.fill: btnBg
            onClicked: btnBg.state == 'clicked' ? btnBg.state = "" : btnBg.state = 'clicked';
        }

        DropShadow {
            anchors.fill: btnToggle
            horizontalOffset: 0
            verticalOffset: 0
            radius: 20.0
            samples: 20
            color: "#40000000"
            source: btnToggle
        }
    }
}
