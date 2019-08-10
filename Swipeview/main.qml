import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: win
    visible: true
    width: 640; height: 480
    title: qsTr("Swipe View Example")
    color: 'white'

    property int itemSize: 350

    SwipeView {
        id: swipeview
        anchors.centerIn: parent
        width: itemSize * 1.1; height: itemSize
        currentIndex: 0

        SwipeItem {
            id: item1
            size: itemSize
        }

        SwipeItem {
            id: item2
            size: itemSize
        }

        SwipeItem {
            id: item3
            size: itemSize
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
