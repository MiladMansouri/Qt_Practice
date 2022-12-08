import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Sender {
        id: sender
        rectColor: "red"
        target: recciver1.getCounter
    }

    Reciver {
        id: recciver1
        rectColor: "green"
        anchors.right: parent.right
        anchors.top: parent.top
    }
    Reciver {
        id: recciver2
        rectColor: "green"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    //    Component.onCompleted: {
    //        sender.notifyCountChange.connect(recciver1.getCounter)
    //        sender.notifyCountChange.connect(recciver2.getCounter)
    //    }
    TextEdit {
        wrapMode: TextEdit.Wrap
    }
}
