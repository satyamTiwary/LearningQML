import QtQuick 2.0

Item {
    id: toggleswitch
    width: background.width; height: background.width

    property bool on: false

    function toggle() {
        console.log("toggle()")
        if (toggleswitch.state == 'on')
            toggleswitch.state = 'off';
        else
            toggleswitch.state = 'on';
    }

    function releaseSwitch() {
        console.log("releaseSwitch()")
        if (knob.x === 3) {
            if (toggleswitch.state == 'off') return;
        }
        if (knob.x === 76) {
            if (toggleswitch.state == 'on') return;
        }
        toggle();
    }

    Image {
        id: background
        source: "../Content/background.png"
        MouseArea { anchors.fill: parent; onClicked: toggle() }
    }

    Image {
        id: knob
        x: 3; y: 5
        source: "../Content/knob.png"

        MouseArea {
            anchors.fill: parent
            drag.target: knob; drag.axis: Drag.XAxis; drag.maximumX: 76; drag.minimumX: 3
            onClicked: toggle()
            onReleased: releaseSwitch()
        }
    }

    states: [
        State {
            name: "on"
            PropertyChanges { target: knob; x: 76 }
            PropertyChanges { target: toggleswitch; on: true }
        },
        State {
            name: "off"
            PropertyChanges { target: knob; x: 3 }
            PropertyChanges { target: toggleswitch; on: false }
        }
    ]

    transitions: Transition {
        NumberAnimation { properties: "x"; easing.type: Easing.InOutQuad; duration: 200 }
    }
}
