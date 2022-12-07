#include "dirhelper.h"
#include <QDebug>
#include <QDir>
#include <QDirIterator>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  qmlRegisterType<DirHelper>("com.mycompany.dirhealper", 1, 0, "DirHelper");
  QQmlApplicationEngine engine;
  const QUrl url(u"qrc:/qtml_image_viewer_example/main.qml"_qs);
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
