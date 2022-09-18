#include "battery.h"
#include <Arduino.h>
#include "pins.h"
#include "constants.h"

void initBattPins(){
    pinMode(V_bat, INPUT);
}

float readBattVoltage(){
    return 1.031175 * VOLTAGE_DIVIDE_FACTOR * analogRead(V_bat) * (3.3/1023);
}

uint16_t readBattVoltageRaw(){
    return analogRead(V_bat);
}