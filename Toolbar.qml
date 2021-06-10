import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


RowLayout{
    width: 400
    height: 40
    signal newGame()
    signal quitGame()

    Button{
        id:newgamebutton
        text:"Новая игра"
        onClicked: newGame()

    }

    TextField{
        id: infoField
        Layout.fillWidth: true
        Text {
                    id: t
                    anchors.centerIn: parent
                    text:"Счет: " + gameplay.ssscore +"           " + "Комбо:" + gameplay.cccombo
                }

   }









    Button{
        id:quitbutton
        text:"Выход"
        onClicked: quitGame()
    }

    Shortcut{
        context: Qt.ApplicationShortcut
        sequences: ["y"]
        onActivated: newGame()

    }

    Shortcut{
        context: Qt.ApplicationShortcut
        sequences: ["q"]
        onActivated: quitGame()

    }

}
