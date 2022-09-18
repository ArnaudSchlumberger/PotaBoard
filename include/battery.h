#ifndef BATTERY_H
#define BATTERY_H
#include <Arduino.h>

#define BATTERY_THRESHOLD_VOLTAGE 465 //3V equivalent

void initBattPins();

float readBattVoltage();

uint16_t readBattVoltageRaw();

#endif