import QtQuick
import QtQuick.Controls 6.3
import com.milad.test

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Test {
        id: test
        onStatus: label.text = data
    }
    Button {
        id: button
        y: 241
        width: 150
        height: 40
        text: qsTr("Button")
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            test.work(Math.random() * 100)
        }
    }

    Label {
        id: label
        y: 192
        text: qsTr("NUM")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
    }
}
