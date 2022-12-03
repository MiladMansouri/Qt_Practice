#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <machine.h>
int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);

  qmlRegisterType<Machine>("com.milad.machine", 1, 0, "Machine");
  QQmlApplicationEngine engine;
  const QUrl url(u"qrc:/QML_CPP_Integration_Example/main.qml"_qs);
  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
          QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
