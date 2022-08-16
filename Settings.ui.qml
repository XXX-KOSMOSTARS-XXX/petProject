import QtQuick 2.12
import QtQuick.Controls 2.5

Page {

    title: qsTr("Настройки")

    Column {
        id: themeButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100
        Text {
            id: themeName
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Выберите тему")
            font.pointSize: 11
            minimumPixelSize: 14
        }

        RadioButton {
            id: blueTheme
            text: qsTr("Нежно-голубая тема")
        }
        RadioButton {
            id: pinkTheme
            text: qsTr("Пастельно-розовая тема")
        }
    }

    Column {
        id: languageButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        Text {
            id: languageName
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Выберите язык")
            font.pointSize: 11
            minimumPixelSize: 14
        }

        RadioButton {
            id: russian
            text: qsTr("Русский")
        }
        RadioButton {
            id: english
            text: qsTr("English")
        }
    }
}
