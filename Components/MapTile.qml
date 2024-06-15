import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import QtLocation
import QtPositioning
import "../controls"

Rectangle {
    color: "#151515"
    radius: 15

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        z:4
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(28.4595, 77.0266) // Gurugram
        zoomLevel: 14
        copyrightsVisible: false

        property geoCoordinate startCentroid

        PinchHandler {
            id: pinch
            target: null
            onActiveChanged: if (active) {
                                 map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
                             }
            onScaleChanged: (delta) => {
                                map.zoomLevel += Math.log2(delta)
                                map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                            }
            onRotationChanged: (delta) => {
                                   map.bearing -= delta
                                   map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                               }
            grabPermissions: PointerHandler.TakeOverForbidden
        }

        WheelHandler {
            id: wheel
            // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
            // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
            // and we don't yet distinguish mice and trackpads on Wayland either
            acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                             ? PointerDevice.Mouse | PointerDevice.TouchPad
                             : PointerDevice.Mouse
            rotationScale: 1/120
            property: "zoomLevel"
        }

        DragHandler {
            id: drag
            target: null
            onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
        }

        Shortcut {
            enabled: map.zoomLevel < map.maximumZoomLevel
            sequence: StandardKey.ZoomIn
            onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }

        Shortcut {
            enabled: map.zoomLevel > map.minimumZoomLevel
            sequence: StandardKey.ZoomOut
            onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
    }

    Rectangle {
        z:55
        color: "#00000000"
        anchors.centerIn: parent
        width: parent.width + 15
        height: parent.height + 15
        radius: 15
        border.width: 10
        border.color: "#000000"
    }

    TextField {
        z: 6
        width: 509
        height: 45
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#FFFFFF"
        font.family: "Lato"
        font.pixelSize: 14
        font.weight: Font.Bold
        placeholderText: qsTr("Enter an address")
        leftPadding: 15
        placeholderTextColor: Style.alphaColor("#FFFFFF",0.5)
        background: Rectangle {
            anchors.fill: parent
            radius: 45
            color: Style.alphaColor("#252525",0.9)
        }
    }
}
