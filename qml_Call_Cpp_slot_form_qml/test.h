#ifndef TEST_H
#define TEST_H

#include <QDebug>
#include <QObject>
class Test : public QObject {
  Q_OBJECT
public:
  explicit Test(QObject *parent = nullptr);

signals:

public slots:
  void mewo();
};

#endif // TEST_H
