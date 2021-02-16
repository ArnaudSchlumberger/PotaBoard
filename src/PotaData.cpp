#include "PotaData.h"
#include <Arduino.h>
#include "keywords.h"
#include "mux.h"
#include "Adafruit_BMP280.h"

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

    uint16_t* humiditePots = new uint16_t[4];
    temperature = bmp.readTemperature();
    pression = bmp.readPressure();

    Serial.print("[");
    Serial.print(temperature);
    Serial.print(";");
    Serial.print(pression/100);
    Serial.print("]\r\n");

    delay(DELAY_AFTER_END_OF_FRAME);
}