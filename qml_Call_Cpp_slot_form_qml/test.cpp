#include "test.h"

Test::Test(QObject *parent) : QObject{parent} {}

void Test::mewo() { qInfo() << "Meow Meow Meow"; }
