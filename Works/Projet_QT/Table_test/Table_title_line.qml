import QtQuick 2.0

Item {
    height: 25
    width: parent.width
    TableTitle{
        id: name
        width: parent.width/3
        titleText: "Name"
    }
    TableTitle{
        id: location
        width: parent.width/3
        titleText: "Location"
        anchors.left: name.right
    }
    TableTitle{
        id: dimension
        width: parent.width/3
        titleText: "Dimension"
        anchors.left: location.right
    }
}
