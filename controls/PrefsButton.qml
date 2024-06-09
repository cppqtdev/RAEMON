import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Button {
    property string setIcon : ""
    property string setText : ""
    property bool isGlow: false
    property real radius: implicitHeight/2
    property color iconColor: "#FFFFFF"
    property color backgroundColor: "#252525"

    id: control
    implicitHeight: 40
    implicitWidth: 40

    Image {
        id: imageIcon
        z: 1
        visible: setIcon
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        source: setIcon
        scale: control.pressed ? 0.9 : 1.0
        Behavior on scale { NumberAnimation { duration: 200; } }
    }

    Text {
        z: 1
        anchors.centerIn: parent
        text: setText
        font: control.font
        color: iconColor
        scale: control.pressed ? 0.9 : 1.0
        Behavior on scale { NumberAnimation { duration: 200; } }
    }

    ColorOverlay {
        z:1
        anchors.fill: imageIcon
        source: imageIcon
        color: iconColor  // make image like it lays under red glass
    }

    background: Rectangle {
        anchors.fill: parent
        radius: control.radius
        color: control.backgroundColor
        visible: true

        Behavior on color {
            ColorAnimation {
                duration: 200;
                easing.type: Easing.Linear;
            }
        }

        Rectangle {
            id: indicator
            property int mx
            property int my
            x: mx - width / 2
            y: my - height / 2
            height: width
            radius: width / 2
            color: isGlow ? Qt.lighter("#29BEB6") : Qt.lighter("#B8FF01")
        }
    }

    Rectangle {
        id: mask
        radius: control.radius
        anchors.fill: parent
        visible: false
    }

    OpacityMask {
        anchors.fill: background
        source: background
        maskSource: mask
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        acceptedButtons: Qt.NoButton
        cursorShape: Qt.PointingHandCursor
        anchors.fill: parent
    }

    ParallelAnimation {
        id: anim
        NumberAnimation {
            target: indicator
            property: 'width'
            from: 0
            to: control.height * 1.1
            duration: 200
        }
        NumberAnimation {
            target: indicator;
            property: 'opacity'
            from: 0.9
            to: 0
            duration: 200
        }
    }

    onPressed: {
        indicator.mx = mouseArea.mouseX
        indicator.my = mouseArea.mouseY
        anim.restart();
    }
}
