import QtQuick
import QtQuick.Layouts
import "../controls"
RowLayout {
    spacing: 20
    property real fmStation: 93.3
    Image {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        source: "qrc:/assets/icons/Wifi-icon.svg"
    }

    ColumnLayout {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Current Station:")
            font.pixelSize: 14
            font.weight: Font.Light
            font.family: "Lato"
            color: "#FFFFFF"
        }
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: fmStation
            font.pixelSize: 14
            font.weight: Font.Bold
            font.family: "Lato"
            color: "#FFFFFF"
        }
    }
}
