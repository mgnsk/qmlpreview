import QtQuick 2.7
import QtQuick.Layouts 1.12
import "custom.js" as Custom

Rectangle {
    id: wrapper
    property int rows
    property int cols

   anchors.fill: parent
    ColumnLayout {
        id: mytable

        anchors.fill: parent
        spacing: 0

        Component.onCompleted: {
            Custom.createObject("row.qml", mytable, null, function (component, parent, data) {
                for (let i = 0; i < wrapper.rows; i++) {
                    let obj = component.createObject(parent, {
                        cols: wrapper.cols,
                    });
                    if (obj == null) {
                        throw "Error creating row.qml";
                    }
                }
            })
        }
    }
}
