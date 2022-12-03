import QtQuick
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: TabBar {
        id: bar
        width: parent.width
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: bar.currentIndex

        HomeForm {}
        Page1Form {}
        Page2Form {}
    }
}
