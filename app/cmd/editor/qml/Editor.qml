import QtQuick 2.7
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

ColumnLayout {
    anchors.fill: parent

    id: customcol
    spacing: 0

    Button {
        text: "Run"
        onClicked: {
            for (let i = 0; i < previewCol.children.length; i++) {
                previewCol.children[i].destroy()
            }

            Qt.createQmlObject(src.text, previewCol, "preview");
        }
    }

    Rectangle {
        id: editorPane

        Layout.fillHeight: true
        Layout.fillWidth: true

        ScrollView {
            id: scrollView
            anchors.fill: parent

            TextArea {
                id: src
                text: `import QtQuick 2.7
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Rectangle {
Layout.fillHeight: true
Layout.fillWidth: true
Button {
    text: "Button"
    onClicked: {
        console.log("Hello");
    }
}
}`
                font.family: "Monospace"
                font.pointSize: 8
                color: "blue"
                focus: true
            }
        }
    }

    Rectangle {
        id: previewPane

        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            anchors.fill: parent

            id: previewCol
            spacing: 0
        }
    }
}
