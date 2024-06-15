import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Page {
    id: root
    padding: 0
    signal backPressed()
    property var pageStack: StackView.view
    property string pageTitle: qsTr("Settings")

    background: Rectangle {
        color: "#151515"
        radius: 15
        anchors.fill: parent
    }

    header: Item {
        id: titleBar
        width: root.width
        height: 60
        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20

            Text {
                Layout.leftMargin: 10
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: root.pageTitle
                font.pixelSize: 20
                font.weight: Font.Bold
                font.family: "Lato"
                color: Style.alphaColor("#FFFFFF",0.5)
            }
        }
    }
}
