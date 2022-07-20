import QtQuick 2.0
import QtQuick.Controls 2.5


Item {
    id: line
    height: 25
    width: parent.width
    property string input
    property string backgroundcolor: "white"
    property int line_nbr

    Rectangle{

        id: firstcolumn
        width: parent.width/3
        height: parent.height
        border.color: "grey"
        border.width: 0.5
        color: backgroundcolor
        TextInput {
            text: input
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 3
        }
    }
    Rectangle{
        id: secondcolumn
        width: parent.width/3
        height: parent.height
        border.color: "grey"
        border.width: 0.5
        color: backgroundcolor
        anchors.left:firstcolumn.right
        ComboBox {
            width: parent.width
            height: parent.height
            model: ["Cells", "Interior faces", "Boundary faces", "vertices"]
            anchors.fill: parent.fill
            background: Rectangle {
                color: backgroundcolor
                border.color: "grey"
            }
            indicator:Image{
                width:0; height:width;
            }

        }

    }
    Rectangle{
        width: parent.width/3
        height: parent.height
        border.color: "grey"
        color: backgroundcolor
        border.width: 0.5
        anchors.left:secondcolumn.right

        ComboBox {

            width: parent.width
            height: parent.height
            model: ["1", "2", "3", "6","9"]
            anchors.fill: parent.fill
            background: Rectangle {
                color: backgroundcolor
                border.color: "grey"
            }
            indicator:Image{
                width:0; height:width;
            }
        }
    }
    MouseArea{
        id: mousearea
        width: parent.width
        height: parent.height
        anchors.fill:parent.fill
        propagateComposedEvents: true
        onPressed: {
            for (var j = 0; j < grid.i ; j++) {
                table.columnObject[j].backgroundcolor = "white"
            }
            var selectedline = table.columnObject[line_nbr]
            selectedline.backgroundcolor = "light blue"
            table.selected_line[0] = selectedline
            mouse.accepted = false

        }
    }
}
