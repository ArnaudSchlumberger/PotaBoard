#include "PotaData.h"
#include <Arduino.h>
#include "keywords.h"
#include "mux.h"
#include "Adafruit_BMP280.h"
#include "BME.h"

#define DELAY_AFTER_END_OF_FRAME 50

void collectSendDataH(){
    //Humidity Data stored into a list
    uint16_t* humiditePots = new uint16_t[4];

    muxPower(ON);
    delay(MUX_POWER_UP_DELAY);
    humiditePots = muxReadAll();
    muxPower(OFF);

    Serial.print("[");
    Serial.print(humiditePots[0]);
    Serial.print(";");
    Serial.print(humiditePots[1]);
    Serial.print(";");
    Serial.print(humiditePots[2]);
    Serial.print(";");
    Serial.print(humiditePots[3]);
    Serial.print("]\r");
    delay(DELAY_AFTER_END_OF_FRAME);
}

void collectSendDataTP(Adafruit_BMP280 &bmp, float &temperature, float &pression){
    BME_setForced();
    temperature = bmp.readTemperature();
    pression = bmp.readPressure();

    Serial.print(temperature);
    Serial.print(";");
    Serial.print(pression/100);
    delay(DELAY_AFTER_END_OF_FRAME);
}

void sendBatteryVoltage(const float batVoltage){
    Serial.print(batVoltage);
    delay(DELAY_AFTER_END_OF_FRAME);
}

void collectDataHumidity(uint16_t &h1, uint16_t &h2, uint16_t &h3, uint16_t &h4){
    h1 = muxReadSingle(0);
    h2 = muxReadSingle(1);
    h3 = muxReadSingle(2);
    h4 = muxReadSingle(3);
}

void collectDataTempPress(Adafruit_BMP280 &bmp, float &temperature, float &pression){
    BME_setForced();
    temperature = bmp.readTemperature();
    pression = bmp.readPressure();
}