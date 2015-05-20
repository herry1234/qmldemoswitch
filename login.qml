import QtQuick 2.0

Rectangle {
    width: 400
    height: 300
    Image {
        source: "./images/bluebackground.png"
        anchors.fill: parent

        Button1 {
            text: "Login"
            icon: "./images/login.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            onClicked: console.log("Clicking 1 ")
        }
        Button1 {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            text: "Sign out"
            icon: "./images/signout.png"
            onClicked: console.log("Clicking 2 ")

        }
    }

}
