import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    property string strUse: "Admin"
    property string strPass: "Admin"
    visible: true
    width: 640
    height: 480
    // Users Elements
    Rectangle {
        width: 200
        height: 20
        color: "white"
        border.color: "black"
        border.width: 2
        radius: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100

        Text {
            text: qsTr("Users")
            anchors.left: parent.left
            anchors.leftMargin: -70
        }
        TextInput{
            id: txtUsers
            width: 190
            height: 20
            text: ""
            anchors.centerIn: parent
            clip: true
        }
    }

    // Password Elements
    Rectangle {
        id: idPass
        width: 200
        height: 20
        color: "white"
        border.color: "black"
        border.width: 2
        radius: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 150

        Text {
            text: qsTr("Password")
            anchors.left: parent.left
            anchors.leftMargin: -70
        }
        TextInput{
            id: txtPassword
            width: 190
            height: 20
            text: ""
            anchors.centerIn: parent
            clip: true
        }
    }

    // Button Login
    Rectangle{
        width: 70
        height: 20
        border.color: "black"
        border.width: 2
        color: "#00A9FF"
        anchors.top: idPass.bottom
        anchors.topMargin: 10
        anchors.right: idPass.right

        Text {
            text: qsTr("Login")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {


            }
        }
    }

    // Button Signin

    Rectangle{
        width: 70
        height: 20
        border.color: "black"
        border.width: 2
        color: "#00A9FF"
        anchors.top: idPass.bottom
        anchors.topMargin: 10
        anchors.left: idPass.left
        Text {
            text: qsTr("Signin")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                pop.visible = true
            }
        }
    }

    Rectangle{
        visible: false
        id : pop
        width: 400
        height: 200
        anchors.centerIn: parent
        radius: 10
        color: "red"
        Text {
            text: qsTr("DMMM Dang")
            anchors.centerIn: parent
        }

        Rectangle
        {
            width: 20
            height: 20
            border.color: "black"
            border.width: 2
            radius: width
            color: "#00A9FF"
            anchors.top: parent.top
            anchors.right: parent.right
            Text {
                text: qsTr("X")
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill : parent
                onClicked: {
                    pop.visible = false;
                }
            }
        }

    }
}
