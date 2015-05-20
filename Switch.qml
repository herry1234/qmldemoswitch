import QtQuick 2.0

Item {
    id: root
    property bool checked: false
    width: 150; height: 150

    Rectangle {
        id: groove
        x: 10; y: 25
        width: 50; height: 100
        color: "gray"
        border.color: "lightgray"
        border.width: 4
    }

    Rectangle {
        id: handle
        x: 15; y: 30
        width: 40; height: 30
        color: "lightgray"
    }

    Rectangle {
        id: light
        x: 80 ; y:60
        color: "black"
        width: 20
        height: 20


    }
    MouseArea {
        anchors.fill: parent
        onClicked : {
           root.checked = !root.checked
        }
    }
    //checked: false
    states: [
        State {
            name : "On"
            when: root.checked
            PropertyChanges {
                target: handle
                y: 90

            }
            PropertyChanges {
                target: light
                color: "red"
            }
        }
//        State {
//            name : "Off"
//            when: !root.checked
//            PropertyChanges {
//                target: handle
//                y: 30

//            }
//            PropertyChanges {
//                target: light
//                color: "black"
//            }
//        }
    ]



    //    states: [
    //        State {
    //            name : "Off"
    //            PropertyChanges {
    //                target: handle
    //                y: 90

    //            }
    //            PropertyChanges {
    //                target: light
    //                color: "red"


    //            }
    //        },
    //        State {
    //            name : "On"
    //            PropertyChanges {
    //                target: handle
    //                y:30

    //            }
    //            PropertyChanges {
    //                target: light
    //                color: "black"


    //            }
    //        }

    transitions: [
        Transition {
            ColorAnimation { properties: "color";duration: 1000 }

            NumberAnimation {
                properties: "y"
//                from:30; to:90
                duration: 1000
            }
        }
    ]

}

