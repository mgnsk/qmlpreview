import QtQuick 2.7
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.1	// ApplicationWindow
import "custom.js" as Custom

ApplicationWindow {
    id: window
	visible: true

    Rectangle {
        Component.onCompleted: {
            Custom.createObject("table.qml", parent, null, function (component, parent, data) {
                let obj = component.createObject(parent, {
                    rows: 8,
                    cols: 8,
                });
                if (obj == null) {
                    throw "Error creating table.qml";
                }
            })
        }
    }
}
