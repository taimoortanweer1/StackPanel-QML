import QtQuick 2.14
import QtQuick.Controls 2.14


Page {
    width: 1366
    height: 768
    title: qsTr("Panneau de commande radio (RMP)")
    signal requestStackChange(var stack, var properties)

    Button {
        id: control
        text: qsTr("Retour")
        font.pointSize: 15
        width: 250
        y: parent.height * 0.8
        x: parent.width * 0.5 - 1.5 * width

        background: Rectangle {
            anchors.fill: parent
            color: "#f9c5bd"
            opacity: enabled ? 1 : 0.3
            border.color: control.hovered ? "#1dbab4" : "#21be2b"
            border.width: 1
            radius: 10


            MouseArea {
                anchors.fill: parent
                onClicked: {
                   requestStackChange("4_emitteur-recep.qml", {});
                }
            }
        }
    }

    Button {
        id: control1
        text: qsTr("Suivant")
        font.pointSize: 15
        width: 250
        y: parent.height * 0.8
        x: parent.width * 0.5 + width / 2

        background: Rectangle {
            anchors.fill: parent
            color: "#f9c5bd"
            opacity: enabled ? 1 : 0.3
            border.color: control.hovered ? "#1dbab4" : "#21be2b"
            border.width: 1
            radius: 10


            MouseArea {
                anchors.fill: parent
                onClicked: {
                   requestStackChange("8_acp.qml", {});
                }
            }
        }
    }

    background: Rectangle {
        anchors.fill: parent
        Image { source: "images/7.png"; fillMode: Image.Stretch; anchors.fill: parent;  opacity: 1 }
    }
}