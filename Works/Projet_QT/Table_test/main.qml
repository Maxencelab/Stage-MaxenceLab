import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Table")
    Rectangle{

        id: background_win
        width: parent.width
        height: parent.height
        color:  "#efefef"
        Rectangle{
            id: table
            property variant columnObject:[]
            property variant selected_line:[]
            height: parent.height/2
            color: "#ECECEC"
            border.color: "gray"
            border.width: 1
            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            Grid{
                id: grid
                columns: 1
                width: parent.width
                Table_title_line{}

                property int i: 0
                Connections {
                    target: addbutton
                    function onClicked() {
                        var component = Qt.createComponent("Table_line.qml");
                        if( component.status === Component.Error ){
                                console.debug("Error:"+ component.errorString() )
                            return
                        }
                        var sprite = component.createObject(grid);
                        var i = grid.i
                        sprite.input = "User_"+i
                        sprite.line_nbr = i
                        grid.i++
                        table.columnObject[i] = sprite
                    }
                }
                Connections {
                    target: deletebutton
                    function onClicked() {
                        table.selected_line[0].destroy();
                    }
                }
            }
        }

        Button{
            id: addbutton
            height: 22
            width: 60
            anchors.top: table.bottom
            anchors.topMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset:  - (width/2 + 5)
            text: "Add"
            background: Rectangle {
                border.width: 1
                border.color: "grey"
                radius: 2
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: addbutton.down ? "#dcdcdc" : "#fefefe"
                    }

                    GradientStop {
                        position: 1
                        color: addbutton.down ? "#dcdcdc" : "#f0f0f0"
                    }
                }
            }
        }
        Button{
            id: deletebutton
            height: 22
            width: 60
            anchors.top: table.bottom
            anchors.topMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: width/2+5
            text: "Delete"
            background: Rectangle {
                border.width: 1
                border.color: "grey"
                radius: 2
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: deletebutton.down ? "#dcdcdc" : "#fefefe"
                    }

                    GradientStop {
                        position: 1
                        color: deletebutton.down ? "#dcdcdc" : "#f0f0f0"
                    }
                }
            }
        }
    }
}



