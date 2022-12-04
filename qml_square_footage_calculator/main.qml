import QtQuick
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    color: "#3d3d3d"
    title: qsTr("Hello World")

    function calc() {
        dispVal.text = sbWidth.value * sbHeight.value
    }

    Column {
        id: column
        anchors.fill: parent
        anchors.topMargin: 165
        spacing: 25

        Label {
            id: dispVal
            text: qsTr("0 sqft")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
        }

        Row {
            id: row
            width: 200
            height: 50
            spacing: 25
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: lblW
                text: qsTr("width")
                font.pointSize: 16
            }

            SpinBox {
                id: sbWidth
                width: 100
                height: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                layer.enabled: false
                onValueModified: calc()
            }
        }

        Row {
            id: row1
            width: 200
            height: 50
            spacing: 25
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: lblH
                text: qsTr("height")
                font.pointSize: 16
            }

            SpinBox {
                id: sbHeight
                width: 100
                height: 40
                anchors.right: parent.right
                anchors.rightMargin: 0

                onValueModified: calc()
            }
        }
    }
}
