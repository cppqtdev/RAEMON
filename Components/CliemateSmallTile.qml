import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0

Rectangle {
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 270
    radius: 15

    ColumnLayout {
        spacing: 20
        anchors.centerIn: parent
        RowLayout {
            ColumnLayout {
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Climate")
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: Style.alphaColor("#FFFFFF",0.5)
                }

                Item {
                    Layout.preferredHeight: 20
                }

                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Outside")
                    font.pixelSize: 14
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("72 °F")
                    font.pixelSize: 36
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }

            Item {
                Layout.preferredWidth: 20
            }

            ColumnLayout {
                Image {
                    source: "qrc:/assets/icons/Cloud Icon.svg"
                }

                Item {
                    Layout.preferredHeight: 10
                }

                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Precipitation: 1%")
                    font.pixelSize: 10
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Humidity: 81%")
                    font.pixelSize: 10
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Wind: 2 mph")
                    font.pixelSize: 10
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            width: 217
            height: 5
            color: "#252525"
            radius: 5
        }

        RowLayout {
            ColumnLayout {
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("Inside")
                    font.pixelSize: 14
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Text {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    text: qsTr("68 °F")
                    font.pixelSize: 36
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }

            Item {
                Layout.preferredWidth: 20
            }

            RowLayout {
                spacing: 10
                Image {
                    Layout.topMargin: 20
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                    source: "qrc:/assets/icons/Climate Control Icon.svg"
                }
                ColumnLayout {
                    Item {
                        Layout.preferredHeight: 10
                    }

                    Text {
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        text: qsTr("A/C: ON")
                        font.pixelSize: 10
                        font.weight: Font.Light
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                    Text {
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        text: qsTr("Heater: OFF")
                        font.pixelSize: 10
                        font.weight: Font.Light
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                    Text {
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        text: qsTr("Fan Speed: 20%")
                        font.pixelSize: 10
                        font.weight: Font.Light
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                }
            }
        }
    }
}
