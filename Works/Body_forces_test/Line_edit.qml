import QtQuick 2.4

Item {
    width: 160
    height: 25
    property string input: '0'
    property string unit
    property string title
    property string objectname

    Rectangle {
        id: line_edit
        width: 80
        height: 25
        color: "#ffffff"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        border.width: 1
        border.color: "gray"

        TextInput {
            id: textInput
            text: input
            objectName: objectname
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.verticalCenterOffset: 0
            anchors.rightMargin: 2
            anchors.leftMargin: 4
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            validator: DoubleValidator {
            }
            Connections {
                target: savebutton
                function onClicked() {
                    xml_engine.set_node_text(textInput.objectName.toString(),textInput.text.toString())
                    window.close()

                }
            }
        }
    }

    Text {
        id: param_title
        text: title
        x: 5
        y: 3
        anchors.right: line_edit.left
        anchors.rightMargin: 6
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
    }

    Text {
        id: param_unit
        text: unit
        y: 3
        anchors.left: line_edit.right
        anchors.leftMargin: 6
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
    }
}
