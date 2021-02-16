#ifndef POTADATA_H
#define POTADATA_H
#include "Adafruit_BMP280.h"

//Collects and Sends Humidity Data from Sensors
void collectSendDataH();
//Collects and Sends Temperature and Pressure from BME280
void collectSendDataTP(Adafruit_BMP280 &bmp, float &temperature, float &pression);

#endif