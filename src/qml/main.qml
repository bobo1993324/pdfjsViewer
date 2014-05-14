import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItems
MainView {
    applicationName: "com.ubuntu.developer.bobo1993324.pdfjsviewer"
    width: units.gu(48)
    height: units.gu(72)

    PageStack {
        id: pageStack
        Component.onCompleted: push(filePage);
        ReadPage {
            id: readPage
            visible: false
        }
        Page {
            id: filePage
            title: "Pdfjs Viewer"
            ListView {
                anchors.fill: parent
                model: fileModel.files
                delegate: ListItems.Standard {
                    text: model.modelData
                    onClicked: {
                        console.log("file link success? " + fileModel.link(model.modelData))
                        pageStack.push(readPage)
                        readPage.reload()
                    }
                }
            }
        }
    }
}
