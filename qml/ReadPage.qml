import QtQuick 2.0
import Ubuntu.Components 0.1
import com.canonical.Oxide 1.0

Page {
    property string baseUrl: "../www/viewer.html?file=file:///home/luke/workspace/pdfjsViewer/Intro.pdf"
    property string fileName
    WebView {
        id: webview
        anchors.fill: parent
        url: Qt.resolvedUrl(baseUrl + fileName);
        preferences.allowUniversalAccessFromFileUrls: true
        filePicker: filePickerLoader.item
        Loader {
            id: filePickerLoader
            source: Qt.resolvedUrl("ContentPickerDialog.qml")
        }
    }
}
