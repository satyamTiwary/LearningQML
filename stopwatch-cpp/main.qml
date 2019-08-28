import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Stop Watch")

    Row {
        spacing: 3
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.horizontalCenter: parent.horizontalCenter

        Button {
            id: btnStart
            text: "Start"
            onClicked: {
                console.log("Start")
                //Start
            }
        }

        Button {
            id: btnStop
            text: "Stop"
            onClicked: {
                console.log("Stop")
                //Stop
            }
        }

        Button {
            id: btnReset
            text: "Reset"
            onClicked: {
                console.log("Reset")
                //Reset
            }
        }

        Button {
            id: btnGoal
            text: "Goal"
            onClicked: {
                console.log("Goal")
                //Goal
            }
        }
    }

    Text {
        id: labelCurrentTime
        text: "Current Time"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -100

        font.pointSize: 20
        font.bold: true
        font.family: "Arial"
    }

    Text {
        id: userDisplay
        text: "0:00"
        height: 41
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -70

        font.pointSize: 60
        font.bold: true
        font.family: "Arial"
    }

    Text {
        id: labelBestTime
        text: "Best Time"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 20

        color: "#af0b0b"
        font.pointSize: 20
        font.bold: true
        font.family: "Arial"
    }

    Text {
        id: userBest
        text: "3:00"

        height: 41

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 55

        color: "#af0b0b"
        font.pointSize: 30
        font.bold: true
        font.family: "Arial"
    }

    Switch {
        id: userSwitch
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 5
    }
}
