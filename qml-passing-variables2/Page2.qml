import QtQuick
import QtQuick.Controls 2.15

Page {

    height: 400
    width: 600
    property alias name: myText.text

    Column {
        id: column
        anchors.fill: parent
        spacing: 10

        Label {
            id: myText
            text: "Page2"
        }

        Button {
            id: button
            width: 150
            height: 30
            text: qsTr("Click Me")
            highlighted: false
            onClicked: name = "Hello World!"
        }
    }
}
