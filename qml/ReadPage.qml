import QtQuick 2.0
import Ubuntu.Components 0.1
import com.canonical.Oxide 1.0

Page {
    property string baseUrl: "../pdf.js/build/generic/web/viewer.html?file=" + Qt.resolvedUrl("../Intro.pdf")
    WebView {
        id: webview
        anchors.fill: parent
        url: Qt.resolvedUrl(baseUrl);
        preferences.allowUniversalAccessFromFileUrls: true
        preferences.localStorageEnabled: true
        filePicker: ContentPickerDialog { }
        alertDialog: AlertDialog { }
        popupMenu: PopupMenu { }
    }
}
