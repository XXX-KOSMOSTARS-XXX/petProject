import QtQuick 2.12
import QtQuick.Controls 2.5

Page {

    title: qsTr("Выбор интерьера")

    Column {
        id: interiorButtons
        anchors.centerIn: parent

        RadioButton {
            id: firstLounge
            text: qsTr("Гостиная 1")
        }
        RadioButton {
            id: secondLounge
            text: qsTr("Гостиная 2")
        }
        RadioButton {
            id: bed
            text: qsTr("В лежанке")
        }
    }
}
