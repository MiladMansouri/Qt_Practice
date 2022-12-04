import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3
import QtQuick.Controls.Windows 6.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#40405f"
    title: qsTr("Hello World")

    function caculate() {
        var val = 0
        var res = 0.0

        switch (cbType.currentIndex) {
        case 0:
        {
            res = textField.text / 12
        }
        break
        case 1:
        {
            res = textField.text * 12
        }
        break
        }
        lblRes.text = res
    }

    Grid {
        id: grid
        x: 198
        y: 105
        width: 243
        height: 197
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30
        rows: 3
        columns: 2

        Label {
            id: label1
            text: qsTr("Type")
            font.pointSize: 11
        }

        ComboBox {
            id: cbType
            width: 100
            height: 40
            model: ListModel {
                id: model
                ListElement {
                    text: "Inches To Feet"
                }
                ListElement {
                    text: "Feet To Inches"
                }
            }
        }

        Label {
            id: label
            text: qsTr("Input")
            font.pointSize: 11
        }

        TextField {
            id: textField
            width: 150
            height: 40
            placeholderText: qsTr("Text Field")
        }

        Label {
            id: label3
            text: qsTr("Resualt")
            font.pointSize: 11
        }

        Label {
            id: lblRes
            text: qsTr("0")
            font.pointSize: 14
        }
    }

    Button {
        id: btnCalc
        x: 281
        y: 308
        width: 80
        height: 40
        text: qsTr("Button")
        transformOrigin: Item.Center

        onClicked: caculate()
    }
}
