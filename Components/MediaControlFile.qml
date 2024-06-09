import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"
Rectangle {
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 270
    radius: 15

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Media Control")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 30
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    source: "qrc:/assets/icons/Volume Icon.svg"
                }

                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("25")
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 217
            height: 5
            color: "#252525"
            radius: 5
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("CarPlay")
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            Image {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "qrc:/assets/icons/Bluetooth Icon.svg"
            }

            ColumnLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Bluetooth Connected:")
                    font.pixelSize: 14
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Raymond’s iPhone")
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }
        }
    }
}
