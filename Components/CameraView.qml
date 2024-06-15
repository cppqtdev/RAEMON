import QtMultimedia
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Style 1.0
Rectangle {
    color: "#151515"
    Layout.preferredWidth: 560
    Layout.preferredHeight: 415
    radius: 15

    CaptureSession {
        camera: Camera {
            id: camera

            // Set camera properties
            focusMode: Camera.FocusModeAutoNear
            customFocusPoint: Qt.point(0.2, 0.2) // Focus relative to top-left corner
        }
        videoOutput: videoOutput

        // Set multimedia backend settings
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
    }

    Image {
        anchors.centerIn: parent
        source: "qrc:/assets/icons/Backup Camera Picture.png"
    }

    Text {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter

        text: qsTr("Please Check Surroundings For Safety")
        font.pixelSize: 20
        font.weight: Font.Bold
        font.family: "Lato"
        color: "#FFFFFF"
    }
}
