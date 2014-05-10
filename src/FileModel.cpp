#include "FileModel.h"
QByteArray FileModel::readFile(QString path)
{
    QFile file(path);
    file.open(QFile::ReadOnly);
    return file.readAll();
}
