import QtQuick 2.12
import QtQuick.Controls 2.5

Page {

    title: qsTr("Выбор питомца")


    Column {
        id: petButtons
        anchors.centerIn: parent

        RadioButton {
            id: cat
            text: qsTr("Кошка")
        }
        RadioButton {
            id: dog
            text: qsTr("Собака")
        }
    }
}
