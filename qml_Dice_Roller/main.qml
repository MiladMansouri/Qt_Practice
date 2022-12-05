import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calc() {
        console.log("Name:")
        //go through each item in the listView
        var model = listView.model
        var total = 0

        //Check each Dice
        for (var i = 0; i < model.count; i++) {
            var item = model.get(i)
            if (item.value > 0) {
                console.log("Name: ", item.name) //the model
                console.log("Number: ", item.number) //the model
                console.log("Value: ", item.value) //the model

                //roll each dice
                for (var roll = 0; roll < item.value; roll++) {
                    var min = 1
                    var max = item.number //from the model

                    var subtotal = Math.floor(Math.random(
                                                  ) * (max - min + 1) + min)
                    console.log("Roll: ", subtotal)
                    total = total + subtotal
                }

                console.log("Total: ", total)
            }

            lblTotal.text = "Total: " + total
        }
    }

    Column {
        id: column
        anchors.fill: parent
        spacing: 10
        ListView {
            id: listView
            width: parent.width
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.topMargin: 10
            anchors.bottomMargin: 80
            model: DiceModel {}
            delegate: DiceDelegate {}
        }
    }
    Rectangle {
        id: rectangle
        height: 80
        color: "#6d6d6d"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Button {
            id: btnCalc
            x: 524
            y: 15
            width: 100
            height: 50
            text: qsTr("Calculate")
            onClicked: {
                calc()
            }
        }

        Label {
            id: lblTotal
            x: 8
            y: 18
            color: "#ffffff"
            text: qsTr("Total : 0")
            font.weight: Font.Bold
            font.pointSize: 25
        }
    }
}
