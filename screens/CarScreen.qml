import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "../Components"
Item {
    id: root
    anchors.fill: parent
    signal powerOff()
    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.rightMargin: 50
        anchors.bottomMargin: 20
        anchors.topMargin: 20

        rows: 1
        columns: 3
        rowSpacing: 20
        columnSpacing: 20

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            YourVehicalTile {
                onComponentSelected: (index)=> { settingsControl.switchPage(index) }
            }

            LockandWarning {}

        }
        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            SettingsControl {
                id: settingsControl
            }

            PowerControls {
                onModeChanged: (index)=> {
                    batteryTile.vehicalMode = index
                }
                onPowerOff: root.powerOff()
            }
        }
        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 2
            Layout.columnSpan: 3
            Layout.rowSpan: 1

            DateTimeTile {}

            BatteryTile {
                id: batteryTile
            }

            NotificationTile {}
        }
    }
}
