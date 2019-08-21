import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    property int size

    Rectangle {
        id: irect_p
        anchors.centerIn: parent
        width: size; height: size
        state: 'clicked'

        MouseArea {
            anchors.fill: parent
            onClicked: { irect_p.state == 'clicked' ? irect_p.state = "not-clicked" : irect_p.state = 'clicked' }
        }

        states: [
            State {
                name: "clicked"
                PropertyChanges { target: irect_p; color: 'red' }
            },
            State {
                name: "not-clicked"
                PropertyChanges { target: irect_p; color: 'orange' }
            }
        ]
    }

    DropShadow {
        anchors.fill: irect_p
        horizontalOffset: 0
        verticalOffset: 0
        radius: 50.0
        samples: 17
        color: "#40000000"
        source: irect_p
    }
}
