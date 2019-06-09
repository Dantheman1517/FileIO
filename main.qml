import QtQuick 2.12
import QtQuick.Window 2.12
import FileIO 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FileIO")

    Rectangle{
        id:upRect
        width: 400
        height:200
        Text{
            text: "Click me"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                myFile.write("a new line");
                var count=myFile.getNumberOfLines();
                resultText.text= count;
                console.log("write the file...")
            }
        }

    }
    Rectangle{
        id: resultRect
        width: 400
        height:200
        anchors.top: upRect.bottom

        Text{
            id: resultText
            text: "Show result"
            anchors.centerIn: parent
        }
    }

    FileIO{
        id:myFile
        source: "test_file.txt"
        onError: console.log(msg)
    }


}
