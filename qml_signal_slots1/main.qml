import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function myGreetingMessage(msg) {
        console.log("Recive emited signal: " + msg)
    }

    Rectangle {
        id: react
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
        signal greet(string message)
        onGreet: {
            console.log("greed signal is emited")
        }
        MouseArea {
            id: mArea
            anchors.fill: parent

            onClicked: {
                console.log("Clicked and Emit Signal")
                // emit signal
                react.greet("Hello My name is Milad!")
            }
        }
        Component.onCompleted: {
            react.greet.connect(myGreetingMessage)
        }
    }
}
