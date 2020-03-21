import QtQuick 2.7
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.1	// ApplicationWindow
import "custom.js" as Custom
//(// import my fies????)

ApplicationWindow {
    id: window
	visible: true

    Rectangle {
        //    width: 500
        // height: 500
       // anchors.fill: parent
        // Layout.fillHeight: true
        // Layout.fillWidth: true
               // Layout.preferredHeight: 0.5 * parent.height

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
