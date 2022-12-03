#ifndef TEST_H
#define TEST_H

#include <QDebug>
#include <QObject>
#include <QRandomGenerator>
#include <QVariant>
class Test : public QObject {
  Q_OBJECT
public:
  explicit Test(QObject *parent = nullptr);

signals:
  void status(QVariant data);

public slots:
  void work(QVariant data);
};

#endif // TEST_H
