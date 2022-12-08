import QtQuick

Item {
    id: reciver
    property alias rectColor: reciverRect.color
    property int count: 0
    width: reciverRect.width
    height: reciverRect.height

    function getCounter(cnt) {
        reciverText.text = cnt
    }

    Rectangle {
        id: reciverRect
        width: 200
        height: 200

        Text {
            id: reciverText
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 50
            text: count
        }
    }
}
