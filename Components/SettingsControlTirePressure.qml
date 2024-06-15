import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

SettingsControlBasePage {
    id: root
    pageTitle: qsTr("Tire Pressure")

    contentItem: ColumnLayout {
        anchors.centerIn: parent
        spacing: 40

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 50
            TirePressureInfo {
                isWarning: true
                value: 20
                title: qsTr("Front L")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
            TirePressureInfo {
                title: qsTr("Front R")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 40
            TirePressureInfo {
                isError: true
                value: 10
                title: qsTr("Back L")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
            TirePressureInfo {
                title: qsTr("Back R")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }
    }
}
