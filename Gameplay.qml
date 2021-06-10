import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


Item {
    property int iintv: 10
    property bool endgame: false
    property int ssscore: 0
    property int cccombo: 0
    width: 400
    height: 520

function newGame(){
    endgame = false
    helper.zero();
    rec1.y = -100;
    rec1.x = helper.random();
    iintv = 10;
    ssscore = 0
    cccombo = 0
    rec1.color = "darkgray"
    timer1.start();

}



        Rectangle{
            id:presszone
            width: 400
            height: 150
            y:370
            color:"lightgreen"
            border.width: 1
            border.color: "black"
}


        Rectangle{
            id:cherta1
            width: 1
            height: 520
            x:108
            color:"Black"


        }
        Rectangle{
            id:cherta4
            width: 1
            height: 520
            x:16
            color:"Black"


        }
        Rectangle{
            id:cherta5
            width: 1
            height: 520
            x:384
            color:"Black"


        }
        Rectangle{
            id:cherta2
            width: 1
            height: 520
            x:200
            color:"Black"

        }
        Rectangle{
            id:cherta3
            width: 1
            height: 520
            x:292
            color:"Black"

        }

        Rectangle{
            id: rec1
            width: 60
            height: 100
            x:32
            border.width: 1
            border.color: "black"
            color: "darkgray"
        }
        Timer{
            id:timer1
            interval: iintv; running: true; repeat: true
            onTriggered: if(rec1.y<450){

                             rec1.y+=3
                         } else{
                            timer1.stop()
                             rec1.color = "red"
                             endgame = true;
                         }


        }








        Shortcut{
            context: Qt.ApplicationShortcut
            sequences: ["v"]
            onActivated: if(rec1.y >350 && rec1.y<450 && rec1.x === 32){
                             rec1.x = helper.random();
                             rec1.y = -100;
                             ssscore = helper.score()
                             cccombo = helper.combo()
                             if(iintv>1)
                                 iintv--
                         } else{
                             timer1.stop()
                             rec1.color = "red";
                             endgame = true;
                                }
        }


        Shortcut{
            context: Qt.ApplicationShortcut
            sequences: ["b"]
            onActivated: if(rec1.y >350 && rec1.y<450 && rec1.x === 124){
                             rec1.x = helper.random();
                             rec1.y = -100;
                             if(iintv>1)
                                 iintv--
                             ssscore = helper.score()
                             cccombo = helper.combo()
                         } else{
                             timer1.stop()
                             rec1.color = "red";
                             endgame = true;
}

        }

        Shortcut{
            context: Qt.ApplicationShortcut
            sequences: ["n"]
            onActivated: if(rec1.y >350 && rec1.y<450 && rec1.x === 216){
                             rec1.x = helper.random();
                             rec1.y = -100;
                             if(iintv>1)
                                 iintv--
                             ssscore = helper.score()
                             cccombo = helper.combo()


                         } else{
                             timer1.stop()
                             rec1.color = "red";
                             endgame = true;
}

        }


        Shortcut{
            context: Qt.ApplicationShortcut
            sequences: ["m"]
            onActivated: if(rec1.y >350 && rec1.y<450 && rec1.x === 308){
                             rec1.x = helper.random();
                             rec1.y = -100;
                             if(iintv>1)
                                 iintv--
                             ssscore = helper.score()
                             cccombo = helper.combo()



                         } else{
                             timer1.stop()
                             rec1.color = "red";
                             endgame = true;
}

        }

}

