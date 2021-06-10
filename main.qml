import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    id: w
    minimumHeight: 600
    minimumWidth: 400
    maximumHeight: 600
    maximumWidth: 400
    width: 400
    height: 600
    visible: true
    title: qsTr("Magic piano")

    ColumnLayout {
        id:cl



        Gameplay {
            id:gameplay





        }

        Toolbar {
            id:toolbar
            onNewGame: gameplay.newGame()
            onQuitGame: Qt.quit()


        }
        Info{

        }
    }

    Dialog{
        height: 40
        width: 160
          id: defeat
          visible: gameplay.endgame
          anchors.centerIn: parent
          Text{
          font.pointSize: 22
          anchors.centerIn: parent
          color: "red"
          text: "Поражение"
    }
}


}
