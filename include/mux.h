#ifndef MUX_H
#define MUX_H

#include <Arduino.h>


#define MUX_POWER_UP_DELAY 100 //ms; delay between mux stage power up and beginning of data collection

//Initializes ATtiny pins involved in Multiplexer management
void muxInitPins();
//Writes S1 & S0 pins of Mux to select which sensor to read
void muxSelect(const uint8_t S);
//Returns voltage at multiplexer output
uint16_t muxReadSingle();
//Returns all voltage at mux inputs
uint16_t* muxReadAll();
//Turns ON or OFF Multiplexer and associated sensors
void muxPower(const uint8_t state);

#endif