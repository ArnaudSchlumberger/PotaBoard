#include <Arduino.h>
//#include <megaTinyCore.h>
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

#define _DEBUG_MODE

#define DELAY_BEFORE_SLEEP 50 //ms; delay at end of loop
#define EMB1061_TRANSPARENT_DELAY 1000 // ms; delay allowing BLE to leave Boot Mode and enter Transparent Mode
float temperature;
float pression;
uint16_t h1,h2,h3,h4; //humidity
bool bmp_ok;


Adafruit_BMP280 bmp;

void setup() {

  Serial.begin(7680); //9600 adjusted baud (for this chip, clock freq is multiplied by 1.25)
  delay(100);
  //Uncomment next paragraph to configure BLE Module
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
  pinMode(V_bat, INPUT);
}

void loop(){
  while(Serial.available()>0 and bmp_ok){
    if((Serial.peek())==0xC0){
      Serial.read();
      collectDataTempPress(bmp, temperature,pression);
    }
    if((Serial.peek())==0xC2){
      Serial.read();
      Serial.print(temperature);
    }
    if((Serial.peek())==0xC4){
      Serial.read();
      Serial.print(pression);
    }
    else if(Serial.peek()==0xE0){
      Serial.read();
      collectDataHumidity(h1, h2, h3, h4);
    }
    else if(Serial.peek()==0xE1){
      Serial.read();
      Serial.print(h1);
    }
    else if(Serial.peek()==0xE2){
      Serial.read();
      Serial.print(h2);
    }
    else if(Serial.peek()==0xE3){
      Serial.read();
      Serial.print(h3);
    }
    else if(Serial.peek()==0xE4){
      Serial.read();
      Serial.print(h4);
    }
    else if(Serial.peek()==0x0B){
      Serial.read();
      sendBatteryVoltage(readBattVoltage());
    }

    #ifdef DEBUG_MODE
    else{
        Serial.write(Serial.read()); //Repeats received value for debugging purposes
    }
    #endif
  }
  if(!bmp_ok){
    Serial.write("BMP ERR");
  }
  delay(DELAY_BEFORE_SLEEP);
  sleep();
  delay(500); //Wake-up delay
}