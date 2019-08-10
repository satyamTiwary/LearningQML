import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    property int size: 300

    Rectangle {
        id: irect_p
        anchors.centerIn: parent
        width: size; height: size
        state: 'clicked'

        MouseArea {
            id: mousearea
            anchors.fill: parent
            onClicked: irect_p.state == 'clicked' ? irect_p.state = "not-clicked" : irect_p.state = 'clicked'
        }

        states: [
            State {
                name: "clicked"
                PropertyChanges { target: irect_p; color: 'red' }
            },
            State {
                name: "not-clicked"
                PropertyChanges { target: irect_p; color: 'yellow' }
            }

        ]
    }

    DropShadow {
        anchors.fill: irect_p
        horizontalOffset: 0
        verticalOffset: 0
        radius: 70.0
        samples: 17
        color: "#25000000"
        source: irect_p
    }
}
