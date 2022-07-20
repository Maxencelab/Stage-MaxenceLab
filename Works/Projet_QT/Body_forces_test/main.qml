import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5



Window  {
    id: window
    visible: true
    width: 640
    height: 480
    Background {
        id: background_win
        anchors.fill: parent
        Column{
            id: gb_column
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 40
            spacing: 25

            Group_box {
                id: gravity
                gbtitle: "Gravity"
                nbr_param: 3
                line_title: ["gx", "gy", "gz"]
                node_name : ["gravity_x", "gravity_y", "gravity_z"]
                line_unit: "m.s-²"
            }

            Group_box {
                id: coriolis_source
                gbtitle: "Coriolis source term"
                nbr_param: 3
                node_name : ["omega_x", "omega_y","omega_z"]
                line_title: ["Ωx", "Ωy","Ωz"]
                line_unit: "s-²"
            }
        }
        Button {
            id: savebutton
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            text: "Save"
        }

    }

}












