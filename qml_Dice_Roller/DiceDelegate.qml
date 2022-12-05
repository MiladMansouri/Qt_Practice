import QtQuick
import QtQuick.Controls 2.15

Item {
    anchors.leftMargin: 10
    width: parent.width
    height: 100

    Row {
        id: row
        spacing: 25
        Label {
            id: lbl
            width: 50
            text: model.name
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            font.pixelSize: 18
        }
        SpinBox {
            from: 0
            to: 100
            width: 100
            height: 50
            anchors.verticalCenter: parent.verticalCenter

            onValueChanged: {

                model.value = value
                console.log(model.value)
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

