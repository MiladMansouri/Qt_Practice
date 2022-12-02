import QtQuick
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root
    property string name: "Milad"
    // property value initilization semantics
    property var page1: ({}) // create empty obj
    property var page2: ({}) // create empty obj
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        //        Page1 {}
        //        Page2 {}
        Component.onCompleted: {
            var component1 = Qt.createComponent("Page1.qml")
            page1 = component1.createObject(swipeView, {
                                                "name": root.name
                                            })

            var component2 = Qt.createComponent("Page2.qml")
            page1 = component2.createObject(swipeView, {
                                                "name": root.name
                                            })
            addItem(page1)
            addItem(page2)
        }
        onCurrentIndexChanged: {

            if (currentIndex === 0) {
                root.name = page2.name
                page1.name = root.name
            }

            if (currentIndex === 1) {
                root.name = page1.name
                page2.name = root.name
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: "Page1"
        }
        TabButton {
            text: "Page2"
        }
    }
}
