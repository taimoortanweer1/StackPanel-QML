import QtQuick 2.14
import QtQuick.Controls 2.14

import QtQuick 2.6
import QtQuick.Controls 2.1

Page {


    width: 1300
    height: 620
    title: qsTr("System")

    //signals to send for changing page
    signal incPage(var value)
    signal decPage(var value)

    //declaring button and its properties
    Button {
        id: control

        font.pointSize: 15
        width: 250
        y: parent.height - 80
        x: parent.width * 0.5 - 1.0 * width

        contentItem: Text {
                   color: control.hovered ? "#000000" : "#ffffff"
                  text: qsTr("Formation")
                   font.pointSize: 15
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
        }

        background: Rectangle {
            anchors.fill: parent
            color: control.hovered ? "#ffffff" : "transparent"
            border.color: "#ffffff"
            border.width: 2

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    incPage(1)
                }
            }
        }
    }

    Button {

        id: control1

        width: 250
        y: parent.height - 80
        x: parent.width * 0.5 + width / 2

        contentItem: Text {
                   color: control1.hovered ? "#000000" : "#ffffff"
                   text: qsTr("Simulation")
                   font.pointSize: 15
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
        }

        background: Rectangle {
            anchors.fill: parent
            color: control1.hovered ? "#ffffff" : "transparent"
            border.color: "#ffffff"
            border.width: 2


            MouseArea {
                anchors.fill: parent
                onClicked: {
                    incPage(12)
                }
            }
        }
    }

    background: Rectangle {
        anchors.fill: parent
        Image { source: "/images/0.png"; anchors.fill: parent;  opacity: 1 }
    }
}
