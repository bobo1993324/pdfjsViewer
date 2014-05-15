import QtQuick 2.0
import Ubuntu.Components 0.1
import com.canonical.Oxide 1.0

Page {
    property string baseUrl: "../www/viewer.html?file=file:///home/luke/.local/share/com.ubuntu.developer.bobo1993324.pdfjsviewer/Documents/"
    property string fileName
//    function reload
    WebView {
        id: webview
        anchors.fill: parent
        url: Qt.resolvedUrl(baseUrl + fileName);
//        url: Qt.resolvedUrl("../www/viewer.html")
        preferences.allowUniversalAccessFromFileUrls: true
//        url: "http://www.ubuntu.com"
        //            filePicker: filePickerLoader.item
        //            Loader {
        //                id: filePickerLoader
        //                source: /*formFactor == "desktop" ? "FilePickerDialog.qml" : */ "ContentPickerDialog.qml"
        //            }
        //            experimental {
//                        alertDialog: Component { Label { text: model.message
//                                Component.onCompleted: {
//                                    console.log(model.message);
//                                    model.dismiss();
//                                }
//                            }
//                        }

        //                //                urlSchemeDelegates: [
        //                //                    UrlSchemeDelegate {
        //                //                        scheme: "file"
        //                //                        onReceivedRequest: {
        //                //                            var s = request.url.toString();
        //                //                            //                            console.log("file scheme called");
        //                //                            console.log('file scheme called' + s.substring(7, s.length));
        //                //                            reply.data = fileModel.readFile(s.substring(7, s.length));
        //                //                            reply.send();
        //                //                            //                                                       messageLabel.text = qsTr("<b>Message URL:</b> ") + imapAccess.oneMessageModel.messageId
        //                //                            //                           imapAccess.msgQNAM.wrapQmlWebViewRequest(request, reply)
        //                //                        }
        //                //                    }
        //                //                ]

        //            }
    }
}
