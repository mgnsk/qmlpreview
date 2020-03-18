import QtQuick 2.7			//ApplicationWindow
import QtQuick.Controls 2.1	//Dialog

ApplicationWindow {
	id: window

	visible: true
	title: "Hello QML Example"
	minimumWidth: 250
	minimumHeight: 200

	Column {
		anchors.centerIn: parent

		TextField {
			id: input
	
			anchors.horizontalCenter: parent.horizontalCenter
			placeholderText: "TEST test something ..."
		}

		Button {
			anchors.horizontalCenter: parent.horizontalCenter
			text: "and click me!"
			onClicked: dialog.open()
		}

		Rectangle {
			color: "yellow"
			width: 100; height: 100

			MouseArea {
				anchors.fill: parent
				onClicked: console.log("clicked yellow")
			}

			Rectangle {
				color: "blue"
				width: 50; height: 50

				MouseArea {
					anchors.fill: parent
					propagateComposedEvents: true
					onClicked: {
						console.log("clicked blue")
						mouse.accepted = false
					}
				}
			}
		}
	}

	Dialog {
		id: dialog

		x: (window.width - width) * 0.5
		y: (window.height - height) * 0.5

		contentWidth: window.width * 0.5
		contentHeight: window.height * 0.25
		standardButtons: Dialog.Ok

		contentItem: Label {
			text: input.text
		}
	}
}