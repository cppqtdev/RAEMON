#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QCoreApplication::setOrganizationDomain("techcoderhub.com");
    QCoreApplication::setOrganizationName("TechCoderHub");
    QCoreApplication::setApplicationName("Raemon");

    QGuiApplication app(argc, argv);
    const QUrl style(QStringLiteral("qrc:/Style.qml"));
    qmlRegisterSingletonType(style, "Style", 1, 0, "Style");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
