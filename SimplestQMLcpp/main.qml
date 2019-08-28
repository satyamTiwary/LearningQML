import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import io.qt.examples.backend 1.0

ApplicationWindow {
    id: root
    width: 300
    height: 480
    visible: true

    BackEnd {
        id: backend
        onUserNameChanged: {
            console.log(userName)
        }
    }

    TextField {
        text: backend.userName
        placeholderText: qsTr("User name")
        anchors.centerIn: parent

        onTextChanged: backend.userName = text
    }
}
