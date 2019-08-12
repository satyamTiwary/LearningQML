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
        width: appwindow.width/2.5; height: appwindow.height/5
        radius: 10
        color: "pink"
        opacity: 0.8
        border.color: "white"
    }

    Text {
        id: text
        text: icount
        anchors.centerIn: rect
        font.family: "Helvetica"
        font.pointSize: appwindow.height > appwindow.width ? appwindow.width/10 : appwindow.height/10
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
