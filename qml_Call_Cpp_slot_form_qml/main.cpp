#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "test.h"
#include <QQmlContext>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;
  Test test;
  engine.rootContext()->setContextProperty("testing", &test);
  const QUrl url(u"qrc:/qml_Call_Cpp_slot_form_qml/main.qml"_qs);
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
