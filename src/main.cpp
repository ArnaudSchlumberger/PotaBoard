#include <Arduino.h>
#include <megaTinyCore.h>
#include <Wire.h>
#include "Adafruit_BMP280.h"

#include "keywords.h"
#include "pins.h"

#include "mux.h"
#include "battery.h"
#include "sleep.h"
#include "BME.h"
#include "PotaData.h"


#define DELAY_BEFORE_SLEEP 50 //ms; delay at end of loop
#define EMB1061_TRANSPARENT_DELAY 1000 // ms; delay allowing BLE to leave Boot Mode and enter Transparent Mode
float temperature;
float pression;

Adafruit_BMP280 bmp;

void setup() {
  Serial.begin(115200);
  delay(EMB1061_TRANSPARENT_DELAY); //Waits for BLE Module to enter Transparent Mode (UART Direct Transmission Mode)
  Wire.begin();
  bmp.begin(BME280_ADDR,BME280_ID_VALUE);
  bmp.setSampling(Adafruit_BMP280::MODE_FORCED,
                  Adafruit_BMP280::SAMPLING_X4,
                  Adafruit_BMP280::SAMPLING_X4,
                  Adafruit_BMP280::FILTER_X2,      
                  Adafruit_BMP280::STANDBY_MS_500);
  sleepConfig();
}

void loop(){
  while(Serial.available()>0){
    if(String(Serial.peek())=="232"){
      Serial.read();
      collectSendDataTP(bmp, temperature,pression);
    }
    else if(String(Serial.peek())=="161"){
      Serial.read();
      collectSendDataH();
    }
  }
  delay(DELAY_BEFORE_SLEEP);
  sleep();
}