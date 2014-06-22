import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItems
MainView {
    applicationName: "com.ubuntu.developer.bobo1993324.pdfjsviewer"
    width: units.gu(48)
    height: units.gu(72)
    automaticOrientation: true
    ReadPage {
        id: readPage
    }
}
