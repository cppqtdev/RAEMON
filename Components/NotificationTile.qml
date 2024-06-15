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
        spacing: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Notifications")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        ColumnLayout {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            spacing: 5

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                spacing: 10
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Check Tire Pressure")
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFB800"
                }

                PrefsButton {
                    backgroundColor: "#00000000"
                    iconColor: "#FFB800"
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    setIcon: "qrc:/assets/icons/Tire Pressure Icon.svg"
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("Maintenance Required")
                font.pixelSize: 14
                font.weight: Font.Light
                font.family: "Lato"
                color: "#FFFFFF"
            }
        }

        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Go to Car Settings")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.underline: true
            font.family: "Lato"
            color: "#FFFFFF"
        }

        Rectangle {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            width: 217
            height: 5
            color: "#252525"
            radius: 5
        }

        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("No incoming calls")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: "#FFFFFF"
        }
    }
}
