#ifndef DIRHELPER_H
#define DIRHELPER_H

#include <QDir>
#include <QFileInfo>
#include <QFileInfoList>
#include <QObject>
class DirHelper : public QObject {
  Q_OBJECT

  Q_PROPERTY(QString path READ path WRITE setPath)
  Q_PROPERTY(QStringList files READ file)
public:
  explicit DirHelper(QObject *parent = nullptr);
  QString path();
  void setPath(QString name);
  QStringList file();
signals:

private:
  QDir dir;
};

#endif // DIRHELPER_H
