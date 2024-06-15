import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 270
    radius: 15

    signal modeChanged(int index)
    signal powerOff()

    ColumnLayout {
        spacing: 20
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        Text {
            Layout.leftMargin: 20
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Power Controls")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            Layout.leftMargin: 8
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    if(swipView.currentIndex !== 0){
                        swipView.currentIndex = swipView.currentIndex - 1
                    }
                }
            }

            SwipeView {
                id: swipView
                clip: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                currentIndex: 0
                Layout.preferredWidth: root.width * 0.5
                Layout.preferredHeight: 50
                onCurrentIndexChanged:  {
                    root.modeChanged(currentIndex)
                }

                Item {
                    clip: true
                    RowLayout {
                        anchors.centerIn: parent
                        spacing: 10
                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            clip: true
                            text: qsTr("ECO Mode")
                            font.pixelSize: 20
                            font.weight: Font.Bold
                            font.family: "Lato"
                            color: "#4EB93D"
                        }

                        Image {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            source: "qrc:/assets/icons/Eco Leaf Icon 2.svg"
                        }
                    }
                }

                Item{
                    clip: true
                    RowLayout {
                        anchors.centerIn: parent
                        spacing: 10

                        Text {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            clip: true
                            text: qsTr("Sport Mode")
                            font.pixelSize: 20
                            font.weight: Font.Bold
                            font.family: "Lato"
                            color: "#00A3FF"
                        }

                        Image {
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            source: "qrc:/assets/icons/Sport Flag Icon.svg"
                        }
                    }
                }

                Item{
                    clip: true
                    Text {
                        clip: true
                        anchors.centerIn: parent
                        text: qsTr("Normal")
                        font.pixelSize: 20
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    if(swipView.currentIndex !== 2){
                        swipView.currentIndex = swipView.currentIndex + 1
                    }
                }
            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredWidth: root.width * 0.9
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: {
                if(swipView.currentIndex == 0) {
                    return qsTr("ECO Mode saves on battery consumption as you drive.")
                } else if(swipView.currentIndex == 1) {
                    return qsTr("Sport Mode gives you a more engaging drive, but uses up more battery.")
                }
                return qsTr("Normal Mode gives you a balance between performance & battery life.")
            }
            font.pixelSize: 14
            font.family: "Lato"
            horizontalAlignment: Text.AlignHCenter
            color: Style.alphaColor("#FFFFFF",0.5)
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
            spacing: 10
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("Vehicle Power Off")
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#CB2020"
                MouseArea {
                    anchors.fill: parent
                    onClicked: root.powerOff()
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                iconColor: "#CB2020"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                setIcon: "qrc:/assets/icons/Power Icon.svg"
                onClicked: root.powerOff()
            }
        }
    }
}
