import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: appwindow
    visible: true
    width: 640; height: 480
    title: qsTr("Hello World")
    color: "lightblue"

    property int icount: 1

    Rectangle {
        id: rect
        anchors.centerIn: parent
        width: 300; height: 100
        color: "pink"
        opacity: 0.8
        border.color: "white"
    }

    Text {
        id: text
        text: icount
        anchors.centerIn: rect
        font.family: "Helvetica"
        font.pointSize: 40
        color: "white"
    }

    MouseArea {
        id: rectClick
        anchors.fill: rect
        onClicked: {
            console.log("Button Clicked " + icount);
            icount ++
        }
    }
}
