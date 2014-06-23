import QtQuick 2.0
import Ubuntu.Components 1.1
MainView {
    applicationName: "com.ubuntu.developer.bobo1993324.pdfjsviewer"
    width: units.gu(48)
    height: units.gu(72)
    automaticOrientation: true
    PageStack {
	    Component.onCompleted: push(Qt.resolvedUrl("./ReadPage.qml"))
    }
}
