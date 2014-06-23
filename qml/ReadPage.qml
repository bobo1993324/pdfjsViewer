import QtQuick 2.0
import Ubuntu.Components 1.1
import com.canonical.Oxide 1.0
Page {
    property string baseUrl: "../pdf.js/build/generic/web/viewer.html?file=" + Qt.resolvedUrl("../Intro.pdf")
    WebView {
        id: webview
        width: parent.width
		height: parent.height
        url: Qt.resolvedUrl(baseUrl);
        preferences.allowUniversalAccessFromFileUrls: true
        preferences.localStorageEnabled: true
        filePicker: ContentPickerDialog { }
        alertDialog: AlertDialog { }
        popupMenu: PopupMenu { }
    }
	flickable: webview
}
