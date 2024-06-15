import QtQuick
import QtQuick.Layouts
RowLayout {
    spacing: 20
    Image {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        source: "qrc:/assets/icons/logos--spotify-icon.svg"
        sourceSize: Qt.size(40,40)
    }

    ColumnLayout {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Client Connected:")
            font.pixelSize: 14
            font.weight: Font.Light
            font.family: "Lato"
            color: "#FFFFFF"
        }
        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Spotify")
            font.pixelSize: 14
            font.weight: Font.Bold
            font.family: "Lato"
            color: "#FFFFFF"
        }
    }
}
