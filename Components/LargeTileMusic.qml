import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"
Rectangle {
    id: root
    color: "#151515"
    property int musicStationConnected: 0
    Layout.preferredWidth: 560
    Layout.preferredHeight: 415
    property bool fmRadio: true
    property double number: 93.0
    property double fractionalPart: 0.5

    radius: 15
    ColumnLayout {
        spacing: 30
        anchors.centerIn: parent

        RowLayout {
            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: {
                    if(musicStationConnected == 0 || musicStationConnected == 2){
                        return qsTr("Currently Playing")
                    }else {
                        return qsTr("Current Station")
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

            Image {
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                sourceSize: Qt.size(40,40)
                source: {
                    if(musicStationConnected == 0){
                        return "qrc:/assets/icons/Bluetooth Icon.svg"
                    }else if(musicStationConnected == 1){
                        return "qrc:/assets/icons/Wifi-icon.svg"
                    }else {
                        return "qrc:/assets/icons/logos--spotify-icon.svg"
                    }
                }
            }
        }

        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            visible: musicStationConnected  === 1
            Item {Layout.fillHeight: true }
            RowLayout {
                spacing: 40
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Item {Layout.fillWidth: true}
                PrefsButton {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    setIcon: "qrc:/assets/icons/music-backword.svg"
                    backgroundColor: "#00000000"
                    onClicked: {
                        if (fractionalPart > 0.0) { // Check if the fractional part is greater than 0.0
                            fractionalPart -= 0.1 // Decrement the fractional part by 0.1
                        } else {
                            if (number > 0) { // Ensure the main number does not go below zero
                                fractionalPart = 0.9 // Set fractional part to 0.9
                                number -= 1 // Decrement the main number by 1
                            }
                        }
                    }
                }

                Rectangle {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 270
                    Layout.preferredHeight: 270
                    color: "#252525"
                    radius: 15
                    ColumnLayout {
                        spacing: 10
                        visible: musicStationConnected === 1
                        anchors.centerIn: parent

                        Image {
                            sourceSize: Qt.size(48,70)
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            source: "qrc:/assets/icons/FMStation.svg"
                        }

                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            text: number + fractionalPart
                            font.pixelSize: 38
                            font.weight: Font.Bold
                            font.family: "Lato"
                            color: "#FFFFFF"
                        }

                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            text: "MHz"
                            font.pixelSize: 28
                            font.family: "Lato"
                            color: Style.alphaColor("#FFFFFF",0.5)
                        }

                    }
                }

                PrefsButton {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    setIcon: "qrc:/assets/icons/Skip Track Button.svg"
                    backgroundColor: "#00000000"
                    onClicked: {
                        if (fractionalPart < 0.9) {
                            fractionalPart += 0.1
                        } else {
                            fractionalPart = 0.0
                            number += 1
                        }
                    }
                }
                Item {Layout.fillWidth: true}
            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                spacing: 20

                ColumnLayout {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    PrefsButton {
                        id: fm
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        backgroundColor: "#00000000"
                        setText: "FM"
                        radius: 8
                        implicitHeight: 20
                        checkable: true
                        checked: !fmRadio
                        font.family: "Lato"
                        font.pixelSize: 20
                        font.bold: Font.Bold
                        iconColor: checked ? "#FFFFFF" : "#808080"
                        onClicked:  {
                            fmRadio = !fmRadio
                        }
                    }

                    Rectangle {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        width: 40
                        height: 2
                        radius: 5
                        color: fm.checked ? "#FFFFFF" : "#00000000"
                    }
                }

                ColumnLayout {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    PrefsButton {
                        id: am
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        backgroundColor: "#00000000"
                        setText: "AM"
                        radius: 8
                        implicitHeight: 20
                        checkable: true
                        checked: fmRadio
                        font.family: "Lato"
                        font.pixelSize: 20
                        font.bold: Font.Bold
                        iconColor: checked ? "#FFFFFF" : "#808080"
                        onClicked:  {
                            fmRadio = !fmRadio
                        }
                    }
                    Rectangle {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        width: 40
                        height: 2
                        radius: 5
                        color: am.checked ? "#FFFFFF" : "#00000000"
                    }
                }
            }

            Item {Layout.fillHeight: true }
        }

        RowLayout {
            visible: musicStationConnected  !== 1
            spacing: 30
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Image {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "qrc:/assets/music-dummy-icons/Song 6.png"
            }

            ColumnLayout {
                spacing: 30
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Text {
                    Layout.preferredWidth: ( root.width /2 ) * 0.75
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("More Than Friends")
                    font.pixelSize: 24
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("by YungDkim")
                    font.pixelSize: 20
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                RowLayout {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    spacing: 30
                    PrefsButton {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        setIcon: "qrc:/assets/icons/music-backword.svg"
                        backgroundColor: "#00000000"
                    }
                    PrefsButton {
                        property bool playing: false
                        setIcon: playing ? "qrc:/assets/icons/mage--play-fill.svg" : "qrc:/assets/icons/mage--pause-fill.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                    PrefsButton {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        setIcon: "qrc:/assets/icons/Skip Track Button.svg"
                        backgroundColor: "#00000000"
                    }
                }
            }
        }

        RowLayout {
            visible: musicStationConnected  !== 1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 10
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("00:00")
                font.pixelSize: 14
                font.weight: Font.Light
                font.family: "Lato"
                color: "#FFFFFF"
            }

            ProgressBar {
                Layout.preferredWidth: root.width * 0.7
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                from: 0
                to: 100
                value: 10
            }

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("03:55")
                font.pixelSize: 14
                font.weight: Font.Light
                font.family: "Lato"
                color: "#FFFFFF"
            }
        }
    }
}
