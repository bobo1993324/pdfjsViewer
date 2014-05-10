import QtQuick 2.0
import Ubuntu.Components 0.1
//import QtWebKit 3.0
//import QtWebKit.experimental 1.0
import Ubuntu.Components.Extras.Browser 0.2
Item {
    width: units.gu(48)
    height: units.gu(72)
//    Page {
//        title: "PDFjs Viewer"
        UbuntuWebView {
            anchors.fill: parent
            url: Qt.resolvedUrl("../www/viewer.html")
            //            experimental.preferences.developerExtrasEnabled: true
            preferences.allowUniversalAccessFromFileUrls: true
//            experimental {
//                alertDialog: Component { Label { text: model.message
//                        Component.onCompleted: {
//                            console.log(model.message);
//                            model.dismiss();
//                        }
//                    }
//                }

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
//    }
}
