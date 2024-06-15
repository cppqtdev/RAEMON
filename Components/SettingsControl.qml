import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

Rectangle {
    id: root
    Layout.preferredWidth: 270
    Layout.preferredHeight: 415
    color: "#151515"
    radius: 15

    StackView {
        id: pageStack
        anchors.fill: parent
        initialItem: settingsHomePage
        clip: true
        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 0
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 0
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 0
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 0
            }
        }
    }

    Component {
        id: settingsHomePage
        SettingsControlHomePage {}
    }

    Component {
        id: tirePressurePage
        SettingsControlTirePressure {
            onBackPressed: pageStack.pop(null)
            objectName: "SettingsControlTirePressure"
        }
    }

    Component {
        id: seatAdjustment
        SettingsControlSeatAdjustment {
            onBackPressed: pageStack.pop(null)
            objectName: "SettingsControlSeatAdjustment"
        }
    }

    Component {
        id: engineSettings
        SettingsControlEngine {
            onBackPressed: pageStack.pop(null)
            objectName: "SettingsControlEngine"
        }
    }

    Component {
        id: backStorageSettings
        SettingsControlBackStorage {
            onBackPressed: pageStack.pop(null)
            objectName: "SettingsControlBackStorage"
        }
    }

    Component {
        id: mirrorAdjustment
        SettingsControlMirrorAdjustment {
            objectName: "SettingsControlMirrorAdjustment"
            onBackPressed: pageStack.pop(null)
        }
    }

    function switchPage(index){
        switch(index) {
        case VehicleSkeletonTile.VehicalParts.LEFT_TOP_TIRE :
        case VehicleSkeletonTile.VehicalParts.RIGHT_TOP_TIRE :
        case VehicleSkeletonTile.VehicalParts.LEFT_BOTTOM_TIRE :
        case VehicleSkeletonTile.VehicalParts.RIGHT_BOTTOM_TIRE :
            if(pageStack.currentItem.objectName !== "SettingsControlTirePressure"){
                pageStack.replace(tirePressurePage)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.DRIVER_SEAT :
            if(pageStack.currentItem.objectName !== "SettingsControlSeatAdjustment"){
                pageStack.replace(seatAdjustment)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.DRIVER_SIDE_SEAT :
            if(pageStack.currentItem.objectName !== "SettingsControlSeatAdjustment"){
                pageStack.replace(seatAdjustment)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.BACK_SEAT :
            if(pageStack.currentItem.objectName !== "SettingsControlSeatAdjustment"){
                pageStack.replace(seatAdjustment)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.LEFT_TOP_MIRROR :
        case VehicleSkeletonTile.VehicalParts.RIGHT_TOP_MIRROR :
            if(pageStack.currentItem.objectName !== "SettingsControlMirrorAdjustment"){
                pageStack.replace(mirrorAdjustment)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.TOP_ENGINE :
            if(pageStack.currentItem.objectName !== "SettingsControlEngine"){
                pageStack.replace(engineSettings)
            }
            break;
        case VehicleSkeletonTile.VehicalParts.BACK_STORAGE :
            if(pageStack.currentItem.objectName !== "SettingsControlBackStorage"){
                pageStack.replace(backStorageSettings)
            }
            break;
        default:
        }
    }
}
