import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640; height: 480
    title: qsTr("Hello World")

    Row {
        spacing: 2
        anchors.centerIn: parent

        Repeater {
            model: 3
            ToggleSwitch {
                w: 40; h: 100
            }
        }
    }
}
