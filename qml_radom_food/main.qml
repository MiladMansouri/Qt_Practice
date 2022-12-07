import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var foodList: ["chinese chicken", "Bacon", "Bagels", "Bananas", "Barbecue", "Barley", "Basil"]
    function foodSelect() {
        var i = Math.floor(Math.random() * foodList.length)
        lblPlace.text = foodList[i]
    }

    MouseArea {
        id: area
        anchors.fill: parent
        onClicked: {
            seqAnim.stop()
            outAnim.start()
        }
    }

    Label {
        id: lblPlace
        anchors.centerIn: parent
        text: "Tap Me!"
        font.bold: true
        font.pixelSize: 25
        opacity: 1
    }

    SequentialAnimation {
        id: seqAnim
        loops: Animation.Infinite
        running: true
        NumberAnimation {
            target: lblPlace
            property: "font.pixelSize"
            duration: 1000
            easing.type: Easing.InOutQuad
            to: 45
        }
        NumberAnimation {
            target: lblPlace
            property: "font.pixelSize"
            duration: 1000
            easing.type: Easing.InOutQuad
            to: 25
        }
    }
    NumberAnimation {
        id: outAnim
        target: lblPlace
        property: "opacity"
        duration: 2000
        easing.type: Easing.InOutQuad
        to: 0
        onFinished: {
            foodSelect()
            parallAnim.start()
        }
    }
    ParallelAnimation {
        id: parallAnim
        NumberAnimation {
            target: lblPlace
            property: "font.pixelSize"
            duration: 2000
            easing.type: Easing.InOutQuad
            from: 25
            to: 45
        }
        NumberAnimation {
            target: lblPlace
            property: "opacity"
            duration: 2000
            easing.type: Easing.InOutQuad
            from: 0
            to: 1
        }
        RotationAnimation {
            target: lblPlace
            direction: RotationAnimation.Counterclockwise
            duration: 2000
            from: 0
            to: 1
        }
    }
}
