import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "controls"
import "screens"

Item {
    anchors.fill: parent
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Item {
            Layout.preferredWidth: parent.width * 0.2
            Layout.preferredHeight: parent.height

            ColumnLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width
                height: parent.height
                Item {Layout.preferredHeight: 10 }

                HomeButton {
                    checked: true
                    setIcon: "qrc:/assets/icons/Home Icon.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: sideLoader.sourceComponent = homeScreen
                }

                HomeButton {
                    setIcon: "qrc:/assets/icons/Car Settings Icon.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: sideLoader.sourceComponent = carScreen
                }

                HomeButton {
                    setIcon: "qrc:/assets/icons/Navigation Icon.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: sideLoader.sourceComponent = navigationScreen
                }

                HomeButton {
                    setIcon: "qrc:/assets/icons/Climate Control Icon.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: sideLoader.sourceComponent = thermoScreen
                }

                HomeButton {
                    setIcon: "qrc:/assets/icons/Media Icon.svg"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: sideLoader.sourceComponent = musicScreen
                }

                Item {Layout.preferredHeight: 10 }
            }
        }
        Item {
            Layout.preferredWidth: parent.width - (parent.width * 0.2)
            Layout.preferredHeight: parent.height

            Loader {
                id: sideLoader
                anchors.fill: parent
                sourceComponent: homeScreen
            }
        }
    }

    Component {
        id: homeScreen
        HomeScreen {}
    }
    Component {
        id: carScreen
        CarScreen {}
    }
    Component {
        id: navigationScreen
        NavigationScreen {}
    }
    Component {
        id: thermoScreen
        ThermoScreen {}
    }
    Component {
        id: musicScreen
        MusicScreen {}
    }
}
