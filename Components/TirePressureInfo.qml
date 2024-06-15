import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Style 1.0
ColumnLayout {
    id: root
    property bool isWarning: false
    property bool isError: false
    property string title: ""
    property color textColor: isError ? "#FF0000" : isWarning ? "#FFB800" : "#FFFFFF"
    property int value: 28

    spacing: 10

    Text {
        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        text: root.title
        font.pixelSize: 24
        font.weight: Font.Bold
        font.family: "Lato"
        color: root.textColor
    }

    RowLayout {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        spacing: 10
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 5
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: root.value
                font.pixelSize: 28
                font.weight: Font.Bold
                font.family: "Lato"
                color: root.textColor
            }
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("psi")
                font.pixelSize: 28
                font.weight: Font.Bold
                font.family: "Lato"
                color: root.textColor
            }
        }

        Image {
            visible: root.isWarning || root.isError
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: {
                if(root.isWarning) {
                    return "qrc:/assets/icons/Warningicon.svg"
                }else if(root.isError) {
                    return "qrc:/assets/icons/Erroricon.svg"
                }else {
                    return ""
                }
            }
        }
    }
}
