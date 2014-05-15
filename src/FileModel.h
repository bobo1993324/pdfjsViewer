#include <QFile>
#include <QTextStream>
#include <QQmlContext>
class FileModel : public QObject {
    Q_OBJECT
    Q_PROPERTY(QStringList files READ files)
public:
    QStringList files();
};
