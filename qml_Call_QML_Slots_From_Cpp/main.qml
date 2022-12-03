import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Connections {
        target: testing
        onNotice: {
            label.text = data
        }
    }

    Column {
        id: column
        anchors.fill: parent
        anchors.topMargin: 215
        spacing: 50

        Label {
            id: label
            text: qsTr("Status")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
        }
        Row {
            id: row
            width: 225
            height: 200
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: btnStart
                width: 100
                height: 40
                text: qsTr("Start")
                onClicked: {
                    testing.start()
                }
            }

            Button {
                id: btnStop
                width: 100
                height: 40
                text: qsTr("Stop")
                onClicked: {
                    testing.stop()
                }
            }
        }
    }
}
