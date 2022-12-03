#ifndef MACHINE_H
#define MACHINE_H

#include <QDebug>
#include <QObject>
#include <QTimer>
#include <QVariant>

class Machine : public QObject {
  Q_OBJECT
  Q_PROPERTY(QVariant workLoad READ value WRITE setValue NOTIFY progress)
public:
  explicit Machine(QObject *parent = nullptr);
  QVariant value();
  void setValue(QVariant data);
signals:
  void progress();
  void started();
  void stopped();
  void paused();
  void resumed();
public slots:
  void start();
  void stop();
  void pause();
  void resume();
private slots:
  void timeout();

private:
  QTimer m_timer;
  int m_value;
};

#endif // MACHINE_H
