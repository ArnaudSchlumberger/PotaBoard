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

#include "clock_management.h"

#define DELAY_BEFORE_SLEEP 50 //ms; delay at end of loop
#define EMB1061_TRANSPARENT_DELAY 1000 // ms; delay allowing BLE to leave Boot Mode and enter Transparent Mode
float temperature;
float pression;
int8_t osc_err;
bool bmp_ok;

Adafruit_BMP280 bmp;

void setup() {

  Serial.begin(7680); //9600 adjusted baud (for this chip, clock freq is multiplied by 1.25)
  delay(100);
  /* 
  Serial.print("**\r");
  Serial.print("AT+BNAME=POTABOARD\r");
  delay(2000);
  Serial.print("AT+UARTCFG=9600,8,0,1,0\r");
  delay(2000);
  Serial.print("AT+SAVE\r");
  Serial.print("AT+REBOOT\r");
  */
  delay(EMB1061_TRANSPARENT_DELAY); //Waits for BLE Module to enter Transparent Mode (UART Direct Transmission Mode)

  Wire.begin();
  bmp_ok = bmp.begin(BME280_ADDR,BME280_ID_VALUE);
  bmp.setSampling(Adafruit_BMP280::MODE_FORCED,
                  Adafruit_BMP280::SAMPLING_X4,
                  Adafruit_BMP280::SAMPLING_X4,
                  Adafruit_BMP280::FILTER_X2,      
                  Adafruit_BMP280::STANDBY_MS_500);
  sleepConfig();
}

void loop(){
  while(Serial.available()>0 and bmp_ok){
    if((Serial.peek())==0x0A){
      Serial.read();
      collectSendDataTP(bmp, temperature,pression);
    }
    else if(Serial.peek()==0x0E){
      Serial.read();
      collectSendDataH();
    }
    else{
        Serial.write(Serial.read()); //Permet d'adapter les lignes précédentes
    }
  }
  if(!bmp_ok){
    Serial.write("BMP ERR");
  }
  delay(DELAY_BEFORE_SLEEP);
  sleep();
  delay(500);
}