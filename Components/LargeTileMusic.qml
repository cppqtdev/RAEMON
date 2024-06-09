import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"
Rectangle {
    id: root
    color: "#151515"
    Layout.preferredWidth: 560
    Layout.preferredHeight: 415
    radius: 15
    ColumnLayout {
        spacing: 30
        anchors.centerIn: parent

        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Currently Playing")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
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
