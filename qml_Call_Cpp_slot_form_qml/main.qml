import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 157
        y: 140
        width: 327
        height: 201
        spacing: 25

        Label {
            text: "Call Cpp Slot"
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button {
            width: 150
            height: 40
            text: "Click Me"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                // call slots
                testing.mewo()
            }
        }
    }
}
