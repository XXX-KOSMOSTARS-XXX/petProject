import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 350
    height: 600
    minimumWidth: 350
    minimumHeight: 600
    visible: true
    title: qsTr("petProject")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Питомец")
                width: parent.width
                onClicked: {
                    stackView.push("Pet.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Окраска питомца")
                width: parent.width
                onClicked: {
                    stackView.push("Coloring.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Интерьер")
                width: parent.width
                onClicked: {
                    stackView.push("Interior.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Настройки")
                width: parent.width
                onClicked: {
                    stackView.push("Settings.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "Home.ui.qml"
        anchors.fill: parent
    }

    footer: ToolBar {
        contentHeight: toolButton.implicitHeight
        visible: stackView.depth > 1 ? false : true
        Label {
            text: qsTr("Взаимодействие: погладить, покормить, поиграть")
            anchors.centerIn: parent
        }
    }

}
