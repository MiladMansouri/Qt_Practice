import QtQuick
import QtQuick.Controls 2.15

Page {
    id: page
    height: 400
    width: 600
    property alias name: myName.text
    Label {
        color: "#ff0000"
        anchors.centerIn: parent
        text: "Page 2"
        anchors.verticalCenterOffset: -178
        anchors.horizontalCenterOffset: -251
        font.pointSize: 25
    }

    Label {
        id: myName
        text: qsTr("HERE")
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 18
    }
}
