#include "battery.h"
#include <Arduino.h>
#include "pins.h"
#include "constants.h"

void initBattPins(){
    pinMode(V_bat, INPUT);
}

uint16_t readBattVoltage(){
    return VOLTAGE_DIVIDE_FACTOR*map(analogRead(V_bat), 0, 1023, 0, MAX_BATTERY_VOLTAGE);
}