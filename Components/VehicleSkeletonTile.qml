import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../controls"
Image {
    id: root
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    source: "qrc:/assets/carIcons/vehical.png"
    property color backgroundColor: "#00000000"

    signal componentSelected(int index)

    // left top most tire
    Rectangle {
        width: 34
        height: 60
        radius: 8
        color: root.backgroundColor
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 16
        anchors.topMargin: 52

        PulseButton {
            isWarning: true
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.LEFT_TOP_TIRE)
            }
        }
    }

    Rectangle {
        width: 34
        height: 60
        radius: 8
        color: root.backgroundColor
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 16
        anchors.topMargin: 52

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.RIGHT_TOP_TIRE)
            }
        }
    }

    Rectangle {
        width: 34
        height: 60
        radius: 8
        color: root.backgroundColor
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.bottomMargin: 67

        PulseButton {
            isError: true
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.LEFT_BOTTOM_TIRE)
            }
        }
    }

    Rectangle {
        width: 34
        height: 60
        radius: 8
        color: root.backgroundColor
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 16
        anchors.bottomMargin: 67

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.RIGHT_BOTTOM_TIRE)
            }
        }
    }

    Rectangle {
        width: 60
        height: 80
        radius: 8
        color: root.backgroundColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 5

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.TOP_ENGINE)
            }
        }
    }

    Rectangle {
        width: 34
        height: 34
        radius: 8
        color: root.backgroundColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: - 32
        anchors.horizontalCenterOffset: 35

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.DRIVER_SIDE_SEAT)
            }
        }
    }

    Rectangle {
        width: 34
        height: 34
        radius: 8
        color: root.backgroundColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: - 32
        anchors.horizontalCenterOffset: -37

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.DRIVER_SEAT)
            }
        }
    }

    Rectangle {
        width: 34
        height: 34
        radius: 8
        color: root.backgroundColor
        anchors.left: parent.left //left Mirror
        anchors.leftMargin: -3
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: - 65

        PulseButton {
            width: 7
            height: 7
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.LEFT_TOP_MIRROR)
            }
        }
    }

    Rectangle {
        width: 34
        height: 34
        radius: 8
        color: root.backgroundColor
        anchors.right: parent.right //right Mirror
        anchors.rightMargin: -3
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: - 65

        PulseButton {
            width: 7
            height: 7
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.RIGHT_TOP_MIRROR)
            }
        }
    }

    Rectangle {
        width: 34
        height: 34
        radius: 8
        color: root.backgroundColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 40

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.BACK_SEAT)
            }
        }
    }

    Rectangle {
        width: 60
        height: 60
        radius: 8
        color: root.backgroundColor
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom

        PulseButton {
            width: 14
            height: 14
            radius: height /2
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.source = iconProvider(VehicleSkeletonTile.VehicalParts.BACK_STORAGE)
            }
        }
    }

    enum VehicalParts {
        LEFT_TOP_TIRE,
        RIGHT_TOP_TIRE,
        LEFT_BOTTOM_TIRE,
        RIGHT_BOTTOM_TIRE,
        DRIVER_SEAT,
        DRIVER_SIDE_SEAT,
        BACK_SEAT,
        LEFT_TOP_MIRROR,
        RIGHT_TOP_MIRROR,
        TOP_ENGINE,
        BACK_STORAGE
    }

    function iconProvider(request){
        componentSelected(request)
        switch(request) {
        case VehicleSkeletonTile.VehicalParts.LEFT_TOP_TIRE :
            return "qrc:/assets/carIcons/leftTopTire.png";
        case VehicleSkeletonTile.VehicalParts.RIGHT_TOP_TIRE :
            return "qrc:/assets/carIcons/righttopTire.png";
        case VehicleSkeletonTile.VehicalParts.LEFT_BOTTOM_TIRE :
            return "qrc:/assets/carIcons/lowerLeftire.png";
        case VehicleSkeletonTile.VehicalParts.RIGHT_BOTTOM_TIRE :
            return "qrc:/assets/carIcons/lowerRightTire.png";
        case VehicleSkeletonTile.VehicalParts.DRIVER_SEAT :
            return "qrc:/assets/carIcons/DriverSeat.png";
        case VehicleSkeletonTile.VehicalParts.DRIVER_SIDE_SEAT :
            return "qrc:/assets/carIcons/DriverSideSeat.png";
        case VehicleSkeletonTile.VehicalParts.BACK_SEAT :
            return "qrc:/assets/carIcons/BackSeat.png";
        case VehicleSkeletonTile.VehicalParts.LEFT_TOP_MIRROR :
            return "qrc:/assets/carIcons/LeftSideMirror.png";
        case VehicleSkeletonTile.VehicalParts.RIGHT_TOP_MIRROR :
            return "qrc:/assets/carIcons/RightSideMirror.png";
        case VehicleSkeletonTile.VehicalParts.TOP_ENGINE :
            return "qrc:/assets/carIcons/frontEngine.png";
        case VehicleSkeletonTile.VehicalParts.BACK_STORAGE :
            return "qrc:/assets/carIcons/BackStorage.png";
        default:
            return "qrc:/assets/carIcons/vehical.png";
        }
    }
}
