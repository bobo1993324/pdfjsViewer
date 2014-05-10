#include <QQuickView>
#include <QGuiApplication>
#include "FileModel.h"

int main(int argc, char ** argv) {
    QGuiApplication app(argc, argv);
    QQuickView viewer;
    viewer.setResizeMode(QQuickView::SizeRootObjectToView);
    FileModel fileModel;
    viewer.rootContext()->setContextProperty("fileModel", &fileModel);
    viewer.setSource(QUrl::fromLocalFile("./qml/main.qml"));
    viewer.show();
    return app.exec();
}
