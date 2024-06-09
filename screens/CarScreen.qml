import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
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
            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 560
                radius: 15
            }

            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 125
                radius: 15
            }
        }
        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 415
                radius: 15
            }
            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 270
                radius: 15
            }
        }
        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 2
            Layout.columnSpan: 3
            Layout.rowSpan: 1
            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 125
                radius: 15
            }

            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 270
                radius: 15
            }
            Rectangle {
                color: "#151515"
                Layout.preferredWidth: 270
                Layout.preferredHeight: 270
                radius: 15
            }
        }
    }
}
