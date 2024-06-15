import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.VirtualKeyboard 2.15
import "../Components"

Item {
    anchors.fill: parent
    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.rightMargin: 50
        anchors.bottomMargin: 20
        anchors.topMargin: 20

        rows: 1
        columns: 2
        rowSpacing: 20
        columnSpacing: 20

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            MapTile {
                id: mapTile
                Layout.preferredWidth: 560
                Layout.fillHeight: true
            }

            KeyBoardTile {
                id: keyBoardTile
            }
        }

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            DateTimeTile {}

            BatteryTile {}

            NotificationTile {}
        }
    }
}
