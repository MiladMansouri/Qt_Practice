#include "test.h"

Test::Test(QObject *parent) : QObject{parent} {}

void Test::print(QVariant data) { qInfo() << data.toString(); }

void Test::work(QVariant data) {
  bool ok;
  int value;
  value = data.toInt(&ok);
  if (!ok) {
    qWarning() << "Not a Valid Number";
  } else {
    int rndnumb = QRandomGenerator::global()->bounded(1000);
    value = value * rndnumb;
  }
  emit status(value);
}
