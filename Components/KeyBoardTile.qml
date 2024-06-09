import QtQuick
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"
Rectangle {
    id: root
    Layout.preferredWidth: 561
    Layout.preferredHeight: 270
    color: inputPanel.active ? "#00000000" : "#151515"
    radius: 15

    RowLayout {
        visible: !inputPanel.active
        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20

        ListView {
            Layout.preferredHeight: root.height *0.9
            Layout.bottomMargin: 30
            Layout.preferredWidth: root.width * 0.6
            Layout.leftMargin: 20
            header: Item {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Text {
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    text: qsTr("Recents")
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: Style.alphaColor("#FFFFFF",0.5)
                }
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredWidth: 5
            Layout.preferredHeight: root.height * 0.8
            Layout.bottomMargin: 20
            color: "#252525"
            radius: 5
        }

        ListView {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredWidth: 120
            Layout.preferredHeight: root.height *0.7
            Layout.bottomMargin: 30
            Layout.rightMargin: 20

            model: 4
            clip: true
            spacing: 10

            header: Item {
                width: 100
                height: 50
                Text {
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    text: qsTr("Favorites")
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: Style.alphaColor("#FFFFFF",0.5)
                }
            }

            delegate: Item {
                width: 100
                height: 40
                PrefsButton {
                    anchors.centerIn: parent
                    setIcon: "qrc:/assets/icons/Home Icon.svg"
                }
            }
        }
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: 270 * 2
        width: 561

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: 270 - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
