import QtQuick

Item {
    property alias rectColor: senderRect.color
    property int count: 0

    width: senderRect.width
    height: senderRect.height

    signal notifyCountChange(string count)

    property var target: null
    onTargetChanged: {
        notifyCountChange.connect(target)
    }

    onNotifyCountChange: {
        console.log("Emit Notify :" + count)
    }

    Rectangle {
        id: senderRect
        width: 200
        height: 200

        Text {
            id: senderText
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 50
            text: count
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                count++
                notifyCountChange(count)
            }
        }
    }
}
