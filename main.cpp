#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "genealfile.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    GenealFile *genealFile = new GenealFile(&app);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("genealFile", genealFile);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
