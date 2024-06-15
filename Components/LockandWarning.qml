import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    property bool celsius : true
    color: "#151515"
    Layout.preferredWidth: 270
    Layout.preferredHeight: 125
    radius: 15

    RowLayout {
        anchors.centerIn: parent
        spacing: 40
        PrefsButton {
            backgroundColor: "#00000000"
            implicitHeight: 55
            implicitWidth: 55
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            setIcon: "qrc:/assets/icons/lock.svg"
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 2
            height: 100
            color: "#252525"
            radius: 5
        }

        PrefsButton {
            implicitHeight: 55
            implicitWidth: 55
            iconColor: "#CB2020"
            backgroundColor: "#00000000"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            setIcon: "qrc:/assets/icons/Warning.svg"
        }
    }
}
