#ifndef GENEALFILE_H
#define GENEALFILE_H

#include <QObject>
#include <QUrl>

class GenealFile : public QObject
{
    Q_OBJECT
public:
    GenealFile(QObject *parent);

    Q_INVOKABLE QString readFile(const QUrl &file) const;
    Q_INVOKABLE void writeFile(const QUrl &file, const QString &text) const;

    Q_INVOKABLE bool fileExists(const QUrl &file) const;
};

#endif // GENEALFILE_H
