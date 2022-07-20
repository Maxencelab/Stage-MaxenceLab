#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <xml_engine.h>





int main(int argc, char *argv[])
{

    //QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QLocale::setDefault(QLocale::English);

    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;
    Xml_Engine *xml_engine = new Xml_Engine;
    engine.rootContext()->setContextProperty("xml_engine",xml_engine);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();
}
