import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: win
    visible: true
    width: 640; height: 480
    title: qsTr("Swipe View Example")
    color: 'grey'

    SwipeView {
        id: swipeview
        anchors.centerIn: parent
        width: 330; height: 300
        currentIndex: 0

        SwipeItem {
            id: item1
        }

        SwipeItem {
            id: item2
        }

        SwipeItem {
            id: item3
        }
    }

    PageIndicator {
        id: indicator
        count: swipeview.count
        currentIndex: swipeview.currentIndex
        anchors.bottom: swipeview.bottom
        anchors.horizontalCenter: swipeview.horizontalCenter
    }
}
