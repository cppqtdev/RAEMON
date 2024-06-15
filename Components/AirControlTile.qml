import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"
Rectangle {
    id: root
    color: "#151515"
    property bool acOn: false
    property bool airWindow: false

    Layout.preferredWidth: 270
    Layout.preferredHeight: 415

    property int fanSpeed: 12
    radius: 15
    ColumnLayout {
        width: parent.width * 0.9
        anchors.centerIn: parent
        spacing: 18
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Air Control")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }
        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Air Outlet")
            font.pixelSize: 14
            font.weight: Font.Light
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            PrefsButton {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Air Up.svg"
                checkable: true
                iconColor: checked ? "#FFFFFF" : "#808080"
            }
            PrefsButton {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Air Down.svg"
                checkable: true
                iconColor: checked ? "#FFFFFF" : "#808080"
            }
            PrefsButton {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Down.svg"
                checkable: true
                iconColor: checked ? "#FFFFFF" : "#808080"
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20

            ColumnLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                PrefsButton {
                    id: airWindshiled
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    backgroundColor: "#00000000"
                    setIcon: "qrc:/assets/icons/Air Windshield.svg"
                    checkable: true
                    checked: !airWindow
                    iconColor: checked ? "#FFFFFF" : "#808080"
                    onClicked:  {
                        airWindow = !airWindow
                    }
                }

                Rectangle {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    width: 40
                    height: 2
                    radius: 5
                    color: airWindshiled.checked ? "#FFFFFF" : "#00000000"
                }
            }

            ColumnLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                PrefsButton {
                    id: airBackWindow
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    backgroundColor: "#00000000"
                    setIcon: "qrc:/assets/icons/Air Back Window.svg"
                    checkable: true
                    checked: airWindow
                    iconColor: checked ? "#FFFFFF" : "#808080"
                    onClicked:  {
                        airWindow = !airWindow
                    }
                }
                Rectangle {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    width: 40
                    height: 2
                    radius: 5
                    color: airBackWindow.checked ? "#FFFFFF" : "#00000000"
                }
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 217
            height: 5
            color: "#252525"
            radius: 5
        }

        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("A/C %0").arg(root.acOn ? "ON" : "OFF")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 217
            height: 5
            color: "#252525"
            radius: 5
        }

        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Fan Speed")
            font.pixelSize: 14
            font.weight: Font.Light
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 40
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                onClicked: {
                    if(fanSpeed !== 0) {
                        fanSpeed = fanSpeed - 1
                    }
                }
            }

            RowLayout {
                spacing: 20
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    source: "qrc:/assets/icons/Fan Icon.svg"
                }

                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("%0").arg(fanSpeed)
                    font.pixelSize: 24
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    fanSpeed = fanSpeed + 1
                }
            }
        }
    }
}
