import QtQuick
import QtQuick.Controls 6.3
import com.milad.machine

Window {
    id: root
    width: 640
    height: 480
    visible: true
    color: "#aaffff"
    title: qsTr("Hello World")

    Machine {
        id: machine
        workLoad: 0
        onProgress: {
            progressBar.value = machine.workLoad * 0.1
        }

        onStarted: {
            btnStart.enabled = false
            btnStop.enabled = true
            btnPause.enabled = true
            btnResume.enabled = fasle
            label.text = "Start"
        }
        onStopped: {
            btnStart.enabled = true
            btnStop.enabled = false
            btnPause.enabled = false
            btnResume.enabled = false
            label.text = "Stoped"
        }
        onPaused: {
            btnStart.enabled = false
            btnStop.enabled = false
            btnPause.enabled = false
            btnResume.enabled = true
            label.text = "Paused"
        }
        onResumed: {
            btnStart.enabled = false
            btnStop.enabled = true
            btnPause.enabled = true
            btnResume.enabled = false
            label.text = "Start"
        }
    }

    Column {
        id: column
        x: 100
        y: 205
        width: 441
        height: 95
        spacing: 25

        Label {
            id: label
            text: qsTr("Label")
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ProgressBar {
            id: progressBar
            width: 440
            height: 10
            anchors.horizontalCenter: parent.horizontalCenter
            value: machine.workLoad
        }

        Row {
            id: row
            width: 440
            height: 50
            spacing: 14

            Button {
                id: btnStart
                width: 100
                height: 40
                text: qsTr("Start")
                onClicked: machine.start()
                enabled: true
            }

            Button {
                id: btnStop
                width: 100
                height: 40
                text: qsTr("Stop")
                onClicked: machine.stop()
                enabled: false
            }

            Button {
                id: btnPause
                width: 100
                height: 40
                text: qsTr("Pause")
                onClicked: machine.pause()
                enabled: false
            }

            Button {
                id: btnResume
                width: 100
                height: 40
                text: qsTr("Resume")
                onClicked: machine.resume()
                enabled: false
            }
        }
    }
}
