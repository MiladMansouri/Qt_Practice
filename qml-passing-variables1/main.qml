import QtQuick
import QtQuick.Controls 2.15

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        //editor
        Page1Form {
            id: page1
        }
        //display
        Page2Form {
            id: page2
        }

        onCurrentIndexChanged: {
            if (currentIndex === 0) {
                page1.name = page2.name
            }
            if (currentIndex === 1) {
                page2.name = page1.name
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Page1")
        }
        TabButton {
            text: qsTr("Page2")
        }
    }
}
