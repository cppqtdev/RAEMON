import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    color: "#151515"
    Layout.preferredWidth: 561
    Layout.preferredHeight: 270
    radius: 15

    ColumnLayout {
        spacing: 20
        anchors.centerIn: parent
        width: parent.width * 0.95
        height: parent.height * 0.8
        Text {
            Layout.leftMargin: 5
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Song Queue")
            font.pixelSize: 20
            font.weight: Font.Bold
            font.family: "Lato"
            color: Style.alphaColor("#FFFFFF",0.5)
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

                model: ListModel {
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

                delegate: ColumnLayout {
                    Image {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        source: icon
                    }
                    Text {
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        text: title
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                    Text {
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
