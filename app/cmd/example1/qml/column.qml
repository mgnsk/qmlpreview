import QtQuick 2.7
import QtQuick.Layouts 1.12

ColumnLayout {
    spacing: 0

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        color: Qt.rgba(Math.random(),Math.random(),Math.random(),1);
    }
}
