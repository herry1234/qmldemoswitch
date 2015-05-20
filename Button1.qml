import QtQuick 2.0

Item {
    id: button
    property alias  text: buttonText.text
    property alias  icon: buttonImage.source
    signal clicked()
    width: 300
    height: 100
    MouseArea {
        id : ma
        anchors.fill : parent
        onClicked: parent.clicked()
    }


    Image {
        id: buttonOne
        source: "./images/bluebutton.png"
        //            anchors.horizontalCenter: parent.horizontalCenter
        //            anchors.top: parent.top
        //            //anchors.bottomMargin: 20
        //            anchors.topMargin: 20

        Image {
            id: buttonImage
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: buttonText
            //                text: "Login"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            color: "white"

        }
    }
    //        Image {
    //            id: button2
    //            source: "./images/bluebutton.png"
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            anchors.bottom: parent.bottom
    //            anchors.bottomMargin: 20
    //            Image {
    //                source: "./images/signout.png"
    //                anchors.left: parent.left
    //                anchors.leftMargin: 20
    //                anchors.verticalCenter: parent.verticalCenter
    //            }
    //            Text {
    //                text: "Sign Out"
    //                anchors.horizontalCenter: parent.horizontalCenter
    //                anchors.verticalCenter: parent.verticalCenter
    //                font.pixelSize: 20
    //                color: "white"

    //            }

    //        }


    /*
    Item {
        x: 50
        y: 50
        width: parent.width * 0.8
        height: parent.height *0.6


        //rotation: 30
        Rectangle {
            width: parent.width -50
            height: parent.height -50
            color: "gray"
        }
        Rectangle {
            y: parent.height/2
            width: parent.width -50
            height: parent.height -50
            color: "red"
            rotation: 45
        }
//        Text {
//            anchors.centerIn: parent
//            text: "Hello World"
//        }
        TextInput {
            x:50;y:100
            text: "input text"
            width: 40
            anchors {
                top: parent.top
                centerIn: parent
            }


        }

//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                //Qt.quit();
//            }
//        }
    }

*/
}

