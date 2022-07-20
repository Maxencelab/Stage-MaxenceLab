import QtQuick 2.4
import "line_edit_creation.js" as Line_create
Item{
    id: element
    width: parent.width
    height: gb_box.height
    property int nbr_param
    property string gbtitle;
    property variant node_name
    property variant line_title
    property string line_unit
    property var line_value:[0,0,0]
    Rectangle {
        id: gb_box
        width: parent.width
        height: nbr_param * 35
        color: "#e0e0e0"
        opacity: 1
        border.width: 1
        border.color: "gray"
        Column {
            id: gb_column
            anchors.verticalCenter: parent.verticalCenter
            spacing: 7
            Component.onCompleted: {
                var i
                for (i = 0; i < nbr_param ; i++) {
                    line_value[i]= xml_engine.get_node(node_name[i])
                    Line_create.createlineedit(line_title[i],line_value[i],line_unit,node_name[i])
                }

            }
        }
        Text {
            id: gb_title
            text : gbtitle
            anchors.topMargin: -20
            anchors.top: gb_box.top
            anchors.left: gb_box.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            x: 15
            y: 0
            font.pixelSize: 14
        }

    }
}





