import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    property string title: qsTr("Driver’s Seat")
    property real temperature: 70
    property bool heatSeatChecked: false
    property bool fanSeatChecked: false
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 270
    radius: 15

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 30
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.leftMargin: 5
            text: root.title
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            PrefsButton {
                backgroundColor: "#00000000"
                iconColor: "#00A3FF"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("%0 °F").arg(temperature)
                font.pixelSize: 48
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            PrefsButton {
                backgroundColor: "#00000000"
                iconColor: "#FF0000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 50
            ColumnLayout {
                spacing: 5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("Air Flow")
                    font.pixelSize: 14
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Item { Layout.preferredHeight: 5 }

                ColumnLayout {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    RowLayout {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        PrefsButton {
                            id: fanIcon
                            checkable: true
                            checked: root.fanSeatChecked
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            setIcon: "qrc:/assets/icons/Fan Icon.svg"
                            backgroundColor: "#00000000"
                            iconColor: checked ? "#FFFFFF" : "#808080"
                        }

                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            text: fanIcon.checked ? qsTr("ON") : qsTr("OFF")
                            font.pixelSize: 14
                            font.weight: Font.Light
                            font.family: "Lato"
                            color: fanIcon.checked ? "#FFFFFF" : "#808080"
                        }
                    }

                    Rectangle {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        width: 63
                        height: 5
                        color: fanIcon.checked ? "#FFFFFF" : "#00000000"
                        radius: 5
                    }
                }
            }

            ColumnLayout {
                spacing: 5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("Heated Seat")
                    font.pixelSize: 14
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Item { Layout.preferredHeight: 5 }

                ColumnLayout {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    RowLayout {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        PrefsButton {
                            id: heatSeatIcon
                            checkable: true
                            checked: root.heatSeatChecked
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            setIcon: "qrc:/assets/icons/Heat Seats.svg"
                            iconColor: checked ? "#FFFFFF" : "#808080"
                            backgroundColor: "#00000000"
                        }

                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            text: heatSeatIcon.checked ? qsTr("ON") : qsTr("OFF")
                            font.pixelSize: 14
                            font.weight: Font.Light
                            font.family: "Lato"
                            color: heatSeatIcon.checked ? "#FFFFFF" : "#808080"
                        }
                    }

                    Rectangle {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        width: 63
                        height: 5
                        color: heatSeatIcon.checked ? "#FFFFFF" : "#00000000"
                        radius: 5
                    }
                }
            }
        }
    }
}
