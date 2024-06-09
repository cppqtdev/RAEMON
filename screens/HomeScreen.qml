import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "../Components"

Item {
    anchors.fill: parent
    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.rightMargin: 50
        anchors.bottomMargin: 20
        anchors.topMargin: 20

        rows: 2
        columns: 2
        rowSpacing: 20
        columnSpacing: 20

        // Rectangle {
        //     color: "#151515"
        //     Layout.preferredWidth: 560
        //     Layout.preferredHeight: 415
        //     Layout.columnSpan: 2
        //     Layout.rowSpan: 1
        //     Layout.row: 0
        //     Layout.column: 0
        //     radius: 15
        // }

        CameraView {
            Layout.columnSpan: 2
            Layout.rowSpan: 1
            Layout.row: 0
            Layout.column: 0
        }

        ColumnLayout {
            spacing: 20
            Layout.columnSpan: 2
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 0
            Layout.column: 1

            DateTimeTile {}

            BatteryTile {}
        }

        RowLayout {
            spacing: 20
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.column: 0

            CliemateSmallTile {}

            MusicSmallTile {}
        }

        NotificationTile {
            Layout.columnSpan: 2
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.column: 1
        }
    }
}
