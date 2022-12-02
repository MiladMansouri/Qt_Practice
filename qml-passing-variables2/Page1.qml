import QtQuick
import QtQuick.Controls 2.15

Page {

    height: 400
    width: 600
    property alias name: textField.text
    Label {
        anchors.centerIn: parent
        text: "Page1"
    }

    TextField {
        id: textField
        x: 205
        y: 236
        width: 191
        height: 22
        placeholderText: qsTr("Text Field")
    }
}
