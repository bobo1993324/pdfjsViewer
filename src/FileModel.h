#include <QFile>
#include <QTextStream>
#include <QQmlContext>
class FileModel : public QObject {
    Q_OBJECT
public:
    Q_INVOKABLE QByteArray readFile(QString path);
};
