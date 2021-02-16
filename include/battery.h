#ifndef BATTERY_H
#define BATTERY_H
#include <Arduino.h>

void initBattPins();

uint16_t readBattVoltage();

#endif