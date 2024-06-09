//https://www.figma.com/design/Ytk3WPtb3oO9QNKm0IwoXV/Steely-Wheels---tvOS-App-(Community)?node-id=22-190&t=8zStTzYABNmcMAeO-0
//https://www.figma.com/design/TnfgSUpsAM6lcpu1r5iuXm/Electric-Car-Console-UI-Design?node-id=1-2&t=hpdQh6sCITeI619F-0
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QCoreApplication::setOrganizationDomain("techcoderhub.com");
    QCoreApplication::setOrganizationName("TechCoderHub");
    QCoreApplication::setApplicationName("Raemon");

    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon("qrc:/assets/techcoderhub_logo.jpg"));
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
