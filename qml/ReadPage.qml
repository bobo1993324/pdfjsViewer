import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Web 0.2
Page {
    property string fileUrl:  Qt.resolvedUrl("../Intro.pdf")
    property string webviewUrl: "../pdf.js/build/generic/web/viewer.html?file=" + fileUrl
    WebView {
        id: webview
        width: parent.width
		height: parent.height
        url: Qt.resolvedUrl(webviewUrl);
        preferences.allowUniversalAccessFromFileUrls: true
        preferences.localStorageEnabled: true
        filePicker: ContentPickerDialog { }
        alertDialog: AlertDialog { }
        popupMenu: PopupMenu { }
    }
    flickable: webview
}
