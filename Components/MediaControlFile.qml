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
    property int volumeValue: 25
    property alias mediaControlSelected: swipView.currentIndex
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
            spacing: 20
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    if(volumeValue !== 0) {
                        volumeValue = volumeValue - 1
                    }
                }
            }

            RowLayout {
                spacing: 10
                Layout.preferredWidth: root.width * 0.4
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Item {Layout.fillWidth: true}
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    source: "qrc:/assets/icons/Volume Icon.svg"
                }

                Text {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    text: qsTr("%0").arg(volumeValue)
                    font.pixelSize: 20
                    font.weight: Font.Bold
                    font.family: "Lato"
                    color: "#FFFFFF"
                }
                Item {Layout.fillWidth: true}
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    volumeValue = volumeValue + 1
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
                Layout.preferredWidth: root.width * 0.4
                Layout.preferredHeight: 50

                Item{
                    clip: true
                    Text {
                        clip: true
                        anchors.centerIn: parent
                        text: qsTr("Car Play")
                        font.pixelSize: 20
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                }

                Item{
                    clip: true
                    Text {
                        clip: true
                        anchors.centerIn: parent
                        text: qsTr("Radio")
                        font.pixelSize: 20
                        font.weight: Font.Bold
                        font.family: "Lato"
                        color: "#FFFFFF"
                    }
                }

                Item{
                    clip: true
                    Text {
                        clip: true
                        anchors.centerIn: parent
                        text: qsTr("Spotify")
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

        Loader {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            sourceComponent:  {
                if(swipView.currentIndex == 0) {
                    return connectedDevice
                }else if(swipView.currentIndex == 1){
                    return fmStationConnected
                } else {
                    return spotifyClient
                }
            }
        }
    }

    Component {
        id: connectedDevice
        ConnectedMobileDevice {}
    }

    Component {
        id: fmStationConnected
        ConnectedFMStation {}
    }

    Component {
        id: spotifyClient
        ConnectedSpotifyClient {}
    }
}
