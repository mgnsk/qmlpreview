import QtQuick 2.7
import QtQuick.Layouts 1.12

ColumnLayout {
    id: customcol
    spacing: 0

    // Just for demo purposes we can load qml from string.
    // TODO should be useful for live editing.
    Component.onCompleted: {
        let qmlString = `
import QtQuick 2.7
import QtQuick.Layouts 1.12

Rectangle {
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: Qt.rgba(Math.random(),Math.random(),Math.random(),1);
}
`
        var newObject = Qt.createQmlObject(qmlString, customcol, "dynamicCol");
    }
}
