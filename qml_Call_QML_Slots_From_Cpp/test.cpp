#include "test.h"

Test::Test(QObject *parent) : QObject{parent} {
  connect(&m_timer, &QTimer::timeout, this, &Test::timeout);
  m_timer.setInterval(1000);
  m_dispaly = "Startig";
  qInfo() << m_dispaly;
  emit notice(QVariant(m_dispaly));
}

void Test::timeout() {

  m_dispaly = QDateTime::currentDateTime().toString();
  emit notice(QVariant(m_dispaly));
}

void Test::start() {

  m_dispaly = "Starting";
  emit notice(QVariant(m_dispaly));
  m_timer.start();
}

void Test::stop() {
  m_dispaly = "Stop";
  emit notice(QVariant(m_dispaly));
  m_timer.stop();
}
