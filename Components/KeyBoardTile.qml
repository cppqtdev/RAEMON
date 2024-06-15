import QtQuick
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    Layout.preferredWidth: 561
    Layout.preferredHeight: heightOfTile
    property int heightOfTile: inputPanel.active ? 170 : 270
    property bool activePannel: inputPanel.active
    color: inputPanel.active ? "#00000000" : "#151515"
    radius: 15

    RowLayout {
        visible: !inputPanel.active
        anchors.fill: parent
        anchors.margins: 10
        Item {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                anchors.fill: parent
                spacing: 0

                Item {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("Recents")
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: Style.alphaColor("#FFFFFF",0.5)
                    }
                }

                Item {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.bottomMargin: 20
                    clip: true

                    ListView {
                        width: parent.width
                        height: parent.height
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.top: parent.top

                        model: 10
                        spacing: 5
                        clip: true

                        delegate: ItemDelegate {
                            width: 400
                            height: 55
                            anchors.left: ListView.left
                            background: null
                            contentItem: Item {
                                anchors.fill: parent
                                anchors.leftMargin: 10
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5

                                ColumnLayout {
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    Text {
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                        text: qsTr("IKEA")
                                        font.pixelSize: 14
                                        font.weight: Font.Bold
                                        font.family: "Lato"
                                        color: "#FFFFFF"
                                    }
                                    Text {
                                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                        text: qsTr("2149 Fenton Pkwy, San Diego, CA 92108")
                                        font.pixelSize: 14
                                        font.family: "Lato"
                                        color: Style.alphaColor("#FFFFFF",0.5)
                                    }
                                }

                                Rectangle {
                                    anchors.bottom: parent.bottom
                                    anchors.left: parent.left
                                    height: 4
                                    width: parent.width
                                    radius: 5
                                    color: "#252525"
                                }
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredWidth: 4
            Layout.preferredHeight: parent.height * 0.9
            color: "#252525"
            radius: 5
        }

        Item {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.preferredWidth: 100

            ColumnLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                anchors.fill: parent
                spacing: 0

                Item {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 50
                    Text {
                        anchors.centerIn: parent
                        text: qsTr("Favorites")
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: Style.alphaColor("#FFFFFF",0.5)
                    }
                }

                Item {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.bottomMargin: 20
                    clip: true

                    ListView {
                        width: parent.width
                        height: parent.height
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top

                        model: ListModel {
                            ListElement {
                                addIcon: "qrc:/assets/icons/Home-icon-Add.svg"
                            }
                            ListElement {
                                addIcon: "qrc:/assets/icons/Work-icon-add.svg"
                            }
                            ListElement {
                                addIcon: "qrc:/assets/icons/Plus-icon-add.svg"
                            }
                        }

                        spacing: 10
                        clip: true

                        delegate: PrefsButton {
                            radius: 8
                            setIcon: addIcon
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
            }
        }
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: heightOfTile * 2
        width: 560

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: heightOfTile - inputPanel.height
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
