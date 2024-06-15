import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    color: "#151515"
    property int musicStationConnected: 0
    Layout.preferredWidth: 561
    Layout.preferredHeight: 270
    radius: 15

    ListModel {
        id: musicModel
        ListElement {
            title : "Smooth"
            actor: "Connor Price"
            icon: "qrc:/assets/music-dummy-icons/Song 1.png"
        }
        ListElement {
            title : "Smooth"
            actor: "Connor Price"
            icon: "qrc:/assets/music-dummy-icons/Song 2.png"
        }
        ListElement {
            title : "Smooth"
            actor: "Connor Price"
            icon: "qrc:/assets/music-dummy-icons/Song 3.png"
        }
        ListElement {
            title : "Smooth"
            actor: "Connor Price"
            icon: "qrc:/assets/music-dummy-icons/Song 4.png"
        }
        ListElement {
            title : "Smooth"
            actor: "Connor Price"
            icon: "qrc:/assets/music-dummy-icons/Song 5.png"
        }
    }

    ListModel {
        id: fmModel
        ListElement {
            title : "KPBS"
            actor: "88.3"
            icon: ""
        }
        ListElement {
            title : "Magic 92.5"
            actor: "92.5"
            icon: ""
        }
        ListElement {
            title : "103.7 KSON"
            actor: "103.7"
            icon: ""
        }
        ListElement {
            title : "93.5 FM"
            actor: "93.5"
            icon: ""
        }
        ListElement {
            title : "95.5 Mirchi tadka"
            actor: "95.5"
            icon: ""
        }
    }

    ColumnLayout {
        spacing: 20
        anchors.centerIn: parent
        width: parent.width * 0.95
        height: parent.height * 0.9

        RowLayout {
            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: {
                    if(musicStationConnected == 0 || musicStationConnected == 2){
                        return qsTr("Song Queue")
                    }else {
                        return qsTr("Saved Stations")
                    }
                }
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: Style.alphaColor("#FFFFFF",0.5)
            }

            Item {
                Layout.fillWidth: true
            }

            PrefsButton {
                visible: musicStationConnected == 1
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                setIcon: "qrc:/assets/icons/Plus-icon-add.svg"
            }
        }

        RowLayout {
            spacing: 25
            width: parent.width
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: horizontalScrollBar.decrease()
            }

            ListView {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                orientation: Qt.Horizontal
                Layout.preferredWidth: root.width * 0.71
                Layout.fillHeight: true
                spacing: 10
                clip: true

                ScrollBar.horizontal: ScrollBar {
                    id: horizontalScrollBar
                    policy: ScrollBar.AlwaysOff
                }

                model: musicStationConnected === 1 ? fmModel : musicModel

                delegate: ColumnLayout {

                    Rectangle {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        width: 125
                        height: 125
                        radius: 15
                        color: "#252525"
                        Image {
                            visible: musicStationConnected !== 1
                            anchors.centerIn: parent
                            source: icon
                        }

                        ColumnLayout {
                            spacing: 10
                            visible: musicStationConnected === 1
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            anchors.centerIn: parent
                            Image {
                                sourceSize: Qt.size(24,35)
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                source: "qrc:/assets/icons/FMStation.svg"
                            }

                            Text {
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                text: actor
                                font.pixelSize: 28
                                font.weight: Font.Bold
                                font.family: "Lato"
                                color: "#FFFFFF"
                            }
                        }
                    }

                    Text {
                        Layout.alignment: (musicStationConnected === 1 ? Qt.AlignHCenter : Qt.AlignLeft) | Qt.AlignVCenter
                        text: title
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }

                    Text {
                        visible: musicStationConnected !== 1
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        text: actor
                        font.pixelSize: 14
                        font.weight: Font.Light
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: horizontalScrollBar.increase()
            }
        }
    }
}
