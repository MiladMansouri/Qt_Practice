import QtQuick
import QtQuick.Controls 2.15

Page {
    id: page
    height: 400
    width: 600
    property alias name: textField.text
    Label {
        color: "#ff0000"
        anchors.centerIn: parent
        text: "Page 1"
        font.pointSize: 25
        anchors.verticalCenterOffset: -178
        anchors.horizontalCenterOffset: -251
    }

    Label {
        id: label
        x: 274
        y: 148
        text: qsTr("Enter Data")
    }

    TextField {
        id: textField
        x: 215
        y: 182
        width: 171
        height: 36
        placeholderText: qsTr("Text Field")
    }
}
