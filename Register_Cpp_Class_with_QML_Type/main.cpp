#include "test.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  qmlRegisterType<Test>("com.milad.test", 1, 0, "Test");
  QQmlApplicationEngine engine;

  const QUrl url(u"qrc:/Register_Cpp_Class_with_QML_Type/main.qml"_qs);
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
