import QtQuick 2.5

Rectangle {
    id: root

    width: 64; height: 64
    radius: 5

    color: "#ffffff"
    border.color: Qt.darker(color, 1.2)

    property alias text: label.text //what is an alias?
    property color fontColor: '#ffffff'

    Text {
        id: label
        anchors.centerIn: parent
        font.pixelSize: 14
        color: root.fontColor
    }
}
