import QtQuick 2.7
import QtQuick.Layouts 1.12
import "custom.js" as Custom

RowLayout {
    id: myrow
    spacing: 0

    property int cols

    Component.onCompleted: {
        Custom.createObject("column.qml", myrow, null, function (component, parent, data) {
            for (let i = 0; i < cols; i++) {
                let obj = component.createObject(parent);
                if (obj == null) {
                    throw "Error creating column.qml";
                }
            }
        })
    }
}
