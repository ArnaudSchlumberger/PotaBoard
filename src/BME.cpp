#include "BME.h"
#include <Arduino.h>
#include <Wire.h>

int BME_readID(){
  Wire.beginTransmission(BME280_ADDR);
  delay(10);
  Wire.write(BME280_ID_REG_ADDR);
  delay(10);
  Wire.endTransmission();
  delay(10);
  Wire.requestFrom(BME280_ADDR,1);
  delay(100);
  return Wire.read();
}

void BME_config(){
  Wire.beginTransmission(BME280_ADDR);
  Wire.write(BME280_CTRL_MEAS_REG_ADDR);
  Wire.write(BME280_CTRL_MEAS_FORCED_MODE);
  Wire.endTransmission();
}