import QtQuick 2.12
import QtQuick.Controls 2.5

Page {

    title: qsTr("Выбор окраски питомца")

    Column {
        id: coloringButtons
        anchors.centerIn: parent

        RadioButton {
            id: red
            text: qsTr("Рыжий")
        }
        RadioButton {
            id: black
            text: qsTr("Черный")
        }
        RadioButton {
            id: white
            text: qsTr("Белый")
        }
        RadioButton {
            id: tricolor
            text: qsTr("Трехцветный")
        }
    }
}
