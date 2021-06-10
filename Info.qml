import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


RowLayout{
    width: 400
    height: 40


    TextField{
        id:infoField

        Layout.fillWidth: true
        Text {
            anchors.centerIn: parent
            text:"Управление: V B N M       Новая игра: Y          Выйти: Q"
    }

}
}
