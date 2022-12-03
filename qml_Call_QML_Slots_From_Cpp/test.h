#ifndef TEST_H
#define TEST_H

#include <QDateTime>
#include <QDebug>
#include <QObject>
#include <QTimer>
#include <QVariant>

class Test : public QObject {
  Q_OBJECT
public:
  explicit Test(QObject *parent = nullptr);

signals:
  void notice(QVariant data);
private slots:
  void timeout();
public slots:
  void start();
  void stop();

private:
  QTimer m_timer;
  QString m_dispaly;
};

#endif // TEST_H
