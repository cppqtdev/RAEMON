import QtQuick
import QtQuick.Controls.Basic

Rectangle {
    id: pulsingBackground
    property bool isWorking: true
    property bool isError: false
    property bool isWarning: false

    color: {
        if(isError ) {
            return Qt.lighter("#FF0000", 1.4)
        } else if(isWarning) {
            return Qt.lighter("#FFB800", 1.4)
        } else {
            return Qt.lighter("#00000000", 1.4)
        }
    }

    radius: 20.0
    opacity: 0.8

    ParallelAnimation {
        running: true
        loops: Animation.Infinite
        PropertyAnimation {
            target: pulsingBackground
            property: "scale"
            to: 1.3
            duration: 1300
        }
        NumberAnimation {
            target: pulsingBackground
            property: "opacity"
            to: 0
            duration: 1300
        }
    }
}
