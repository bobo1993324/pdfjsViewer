#include "FileModel.h"
#include <QDir>
#include <QDebug>
QStringList FileModel::files() {
    QDir qdir(QDir::homePath() + "/.local/share/com.ubuntu.developer.bobo1993324.pdfjsviewer/Documents");
    if (!qdir.exists()) {
        qdir.mkpath(qdir.absolutePath());
        return QStringList();
    } else {
        QStringList qsl = qdir.entryList();
        qDebug() << qsl;
        //remove . and ..
        int i = 0;
        while (i < qsl.length()) {
            if (qsl[i] == "." || qsl[i] == "..") {
                qsl.removeAt(i);
            } else {
                i++;
            }
        }
        return qsl;
    }
}

bool FileModel::link(QString fileName) {
    //remove former link
    QFile fOld(QDir::homePath() + "/.local/share/com.ubuntu.developer.bobo1993324.pdfjsviewer/tmp.pdf");
    if (fOld.exists()) {
        qDebug() << "removing old file";
        fOld.remove();
    }
    QFile f(QDir::homePath() + "/.local/share/com.ubuntu.developer.bobo1993324.pdfjsviewer/Documents/" + fileName);
    Q_ASSERT(f.exists());
    return f.link(QDir::homePath() + "/.local/share/com.ubuntu.developer.bobo1993324.pdfjsviewer/tmp.pdf");
}
