import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    Column {
//        spacing: 2
//        anchors.centerIn: parent

//        Repeater {
//            //model: 10
//            model: ["Satyam", "Sarthak", "Sakshi", "Samsher", "Badmaneshwar"]

//            BlueBox {
//                width: 150; height: 30
//                //text: index
//                text: modelData + ' (' + index + ')'
//            }
//        }
//    }

    Column {
        spacing: 2
        anchors.centerIn: parent

        Repeater {
            //model: 10
            //model: ["Satyam", "Sarthak", "Sakshi", "Samsher", "Badmaneshwar"]
            model: ListModel {
                ListElement { name: "Satyam"; angerLevel: "orange" }
                ListElement { name: "Sarthak"; angerLevel: "Red" }
                ListElement { name: "Sakshi"; angerLevel: "Brown" }
                ListElement { name: "Samsher"; angerLevel: "Blue" }
                ListElement { name: "Badmaneshwar"; angerLevel: "Brown" }
            }

            Box {
                width: 150; height: 30
                //text: index
                //text: modelData + ' (' + index + ')'
                text: name
                color: Qt.lighter(angerLevel, 1.5)

                Box {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5

                    width: 16
                    height: 16
                    radius: 8

                    color: angerLevel
                }
            }
        }
    }
}
