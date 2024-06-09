import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0

Rectangle {
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 270
    radius: 15

    RowLayout {
        anchors.centerIn: parent
        spacing: 30

        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 20

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("Battery")
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: Style.alphaColor("#FFFFFF",0.5)
            }

            Image {
               Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
               source: "qrc:/assets/icons/BatteryIcon.svg"

               Image {
                   source: "qrc:/assets/icons/Eco Leaf Icon.svg"
                   anchors.centerIn: parent
               }
            }

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("72%")
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#4EB93D"
            }
        }

        ColumnLayout {
            spacing: 10
            Layout.alignment: Qt.AlignHCenter

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("Est. Distance")
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }
            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("240 miles left")
                font.pixelSize: 14
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#4EB93D"
            }

            Item {Layout.preferredHeight: 20}

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("with Normal Mode:")
                font.pixelSize: 10
                font.weight: Font.Light
                font.family: "Lato"
                color: "#FFFFFF"
            }
            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("205 miles left")
                font.pixelSize: 14
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            Item {Layout.preferredHeight: 5}

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("with")
                    font.pixelSize: 10
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("Sport Mode:")
                    font.pixelSize: 10
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#00A3FF"
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("168 miles left")
                font.pixelSize: 14
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }
        }
    }
}
