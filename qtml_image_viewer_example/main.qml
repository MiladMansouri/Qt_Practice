import QtQuick
import QtQuick.Controls 2.15
import com.mycompany.dirhealper 1.0

Window {
    property int num: 0
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    DirHelper {
        id: dir
        path: "C:/Users/mansouri.m/Pictures/"
    }
    function imageSelect(index) {
        var files = dir.files
        if (index === 1) {
            num++
            image.source = "file:///" + files[num]
            console.log(num)
        } else {
            num--
            image.source = "file:///" + files[num]
            console.log(num)
        }
    }

    Image {
        id: image
        anchors.fill: parent
        source: "file:///C:/Users/mansouri.m/Pictures/su57.jpg"
        fillMode: Image.PreserveAspectFit
        focus: true
        Keys.onLeftPressed: imageSelect(1)
        Keys.onRightPressed: imageSelect(2)
    }
}
