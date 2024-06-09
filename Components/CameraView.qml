import QtMultimedia
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

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
}
