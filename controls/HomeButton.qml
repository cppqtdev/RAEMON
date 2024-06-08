import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

RadioButton {
    property string setIcon : ""
    property bool isGlow: false

    id: control
    implicitHeight: 125
    implicitWidth: 125
    indicator: null

    Image {
        z: 1
        visible: setIcon
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        source: setIcon
        scale: control.pressed ? 0.9 : 1.0
        Behavior on scale { NumberAnimation { duration: 200; } }
    }

    background: Rectangle {
        anchors.fill: parent
        radius: 15
        color: "#252525"
        visible: true
        border.color: control.checked ? "#FFFFFF" : "#00000000"
        border.width: 4
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
        radius: 15
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
