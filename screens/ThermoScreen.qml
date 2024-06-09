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

            WeatherTile {}

            SeatTile {
                title: qsTr("Driver’s Seat")
                temperature: 70
                heatSeatChecked: false
                fanSeatChecked: true
            }
        }

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            AirControlTile {}

            SeatTile {
                title: qsTr("Back Seat")
                temperature: 68
                heatSeatChecked: true
                fanSeatChecked: false
            }
        }
        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 2
            Layout.columnSpan: 3
            Layout.rowSpan: 1

            DateTimeTile {}

            BatteryTile {}

            SeatTile {
                title: qsTr("Passenger Seat")
                temperature: 73
                heatSeatChecked: true
                fanSeatChecked: true
            }
        }
    }
}
