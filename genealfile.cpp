#include "genealfile.h"

#include <QFile>

GenealFile::GenealFile(QObject *parent)
    : QObject(parent)
{

}

QString GenealFile::readFile(const QUrl &file) const
{
    QString out;

    QFile f(file.toLocalFile());
    if (!f.open(QFile::ReadOnly))
        qFatal("Failed to read %s", qPrintable(file.toLocalFile()));
    out = QString::fromLocal8Bit(f.readAll());
    f.close();

    return out;
}

void GenealFile::writeFile(const QUrl &file, const QString &text) const
{
    QFile f(file.toLocalFile());
    if (!f.open(QFile::WriteOnly))
        qFatal("Failed to write %s", qPrintable(file.toLocalFile()));
    f.write(text.toUtf8().constData());
    f.close();
}

bool GenealFile::fileExists(const QUrl &file) const
{
    return QFile::exists(file.toLocalFile());
}
