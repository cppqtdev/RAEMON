import QtQuick
import Qt5Compat.GraphicalEffects
Item{
    id: root
    clip: true

    property color color: "#FFFFFF"
    property string source: "qrc:/assets/seatIcons/mdi--car-seat.svg"

    Image {
        id: imageIcon
        sourceSize: Qt.size(60,60)
        anchors.centerIn: parent
        source: root.source
    }

    ColorOverlay {
        z:1
        anchors.fill: imageIcon
        source: imageIcon
        color: root.color
    }
}
