var component;
var sprite;

function createlineedit(title,value,unit,name) {
    component = Qt.createComponent("Line_edit.qml");
    sprite = component.createObject(gb_column);
    sprite.unit = unit
    sprite.title = title
    sprite.input = value
    sprite.objectname = name

    if (sprite === null) {
        // Error Handling
        console.log("Error creating object");
    }
}
