#include "dirhelper.h"

DirHelper::DirHelper(QObject *parent) : QObject{parent} {}

QString DirHelper::path() { return dir.path(); }

void DirHelper::setPath(QString name) { dir.setPath(name); }

QStringList DirHelper::file() {
  QStringList nameFilter;
  nameFilter << "*.png"
             << "*.jpg"
             << "*.gif";
  auto list = dir.entryInfoList(
      nameFilter, QDir::AllEntries | QDir::NoDotAndDotDot | QDir::Files);
  // qInfo() << list;
  QStringList sList;
  foreach (auto var, list) {
    sList.append(var.filePath());
  }
  return sList;
}
