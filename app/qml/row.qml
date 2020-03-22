import QtQuick 2.7
import QtQuick.Layouts 1.12
import "custom.js" as Custom

RowLayout {
    id: myrow
    spacing: 0

    property int cols

    property int index

    Component.onCompleted: {
        Custom.createObject("column.qml", myrow, null, function (component, parent, data) {
            let index = myrow.index%2 == 0 ? 0 : 1;
    
            for (let i = 0; i < cols; i++) {
                let obj = component.createObject(parent, {
                    index: index,
                });
                if (obj == null) {
                    throw "Error creating column.qml";
                }
                index++
            }
        })
    }
}
