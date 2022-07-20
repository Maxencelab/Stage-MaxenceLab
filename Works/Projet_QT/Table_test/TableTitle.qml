import QtQuick 2.4

Item {
    width: parent.width/3
    height: 25
    property alias titleText: title.text
    Rectangle {
        id: grad_BackgroundForm
        height: parent.height
        anchors.fill: parent
        border.width: 0.5
        border.color: "grey"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#fefefe"
            }
            GradientStop {
                position: 1
                color:  "#f0f0f0"
            }
        }
        Text {
            id: title
            x: 188
            y: 181
            text: qsTr("Text")
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 13
        }
    }
 }


