import QtQuick 2.0

Rectangle {
    id: light
    width: 100
    height: 200
    Column {

        anchors.fill: parent
        spacing: 5
        Rectangle {
            id: stop
            color: "black"
            width: 100
            height: 100

        }
        Rectangle {
            id: go
            color: "black"
            width: 100
            height: 100

        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked : {
            if(light.state == "Stop")
                light.state = "Go"
            else
                light.state = "Stop"


        }
    }

    state: "stop"
    states: [
        State {
            name : "Stop"
            PropertyChanges {
                target: stop
                color: "red"

            }
        },
        State {
            name : "Go"
            PropertyChanges {
                target: go
                color: "green"

            }
        }
    ]
    transitions: [
        Transition {
            ColorAnimation { properties: "color";duration: 1000 }
        }
    ]


}
