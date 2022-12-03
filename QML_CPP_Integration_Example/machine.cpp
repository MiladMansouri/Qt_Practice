#include "machine.h"

Machine::Machine(QObject *parent) : QObject{parent} {
  connect(&m_timer, &QTimer::timeout, this, &Machine::timeout);
  m_timer.setInterval(1000);
  m_value = 0;
}

QVariant Machine::value() { return QVariant(m_value); }

void Machine::setValue(QVariant data) {
  bool ok;
  int a = data.toInt(&ok);
  if (ok) {
    m_value = a;
    emit progress();
  } else {
    qWarning() << "Not Valid Data";
  }
}

void Machine::start() {
  m_value = 0;
  m_timer.start();
  emit started();
}

void Machine::stop() {
  m_value = 0;
  m_timer.stop();
  emit stopped();
}

void Machine::pause() {
  m_timer.stop();
  emit paused();
}

void Machine::resume() {
  m_timer.start();
  emit resumed();
}

void Machine::timeout() {
  m_value++;
  if (m_value > 10) {
    m_value = 0;
    m_timer.stop();
    emit stopped();
  } else {
  }
  emit progress();
}
