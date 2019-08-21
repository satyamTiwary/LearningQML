import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.12

Window {
    visible: true
    width: 300
    height: 300
    title: qsTr("Hello World")

    LinearGradient {
        anchors.fill: parent
        start: Qt.point(300, 0)
        end: Qt.point(0, 300)

        gradient: Gradient {
                GradientStop { position: 0.0; color: "#00000000" }
                GradientStop { position: 0.333; color: Qt.rgba(0, 1, 0, 1) }
                GradientStop { position: 1.0; color: "red" }
            }
    }

}
