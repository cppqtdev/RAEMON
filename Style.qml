pragma Singleton
import QtQuick

QtObject {
    function alphaColor(color, alpha) {
        let actualColor = Qt.darker(color, 1)
        actualColor.a = alpha
        return actualColor
    }
}
