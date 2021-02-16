#include "mux.h"
#include "pins.h"
#include <Arduino.h>
#include "keywords.h"
void muxInitPins(){
    pinMode(MUX_SEL_0, OUTPUT);
    pinMode(MUX_SEL_1, OUTPUT);
    pinMode(V_CMD, OUTPUT);
    digitalWrite(V_CMD, HIGH); //Turns Multiplexer Stage OFF
    pinMode(MUX_OUT, INPUT);
}


void muxSelect(const uint8_t S){
    switch (S)
    {
    case 0:
        digitalWrite(MUX_SEL_0, LOW);
        digitalWrite(MUX_SEL_1, LOW);
        break;
    case 1:
        digitalWrite(MUX_SEL_0, HIGH);
        digitalWrite(MUX_SEL_1, LOW);
        break;
    case 2:
        digitalWrite(MUX_SEL_0, LOW);
        digitalWrite(MUX_SEL_1, HIGH);
        break;
    case 3:
        digitalWrite(MUX_SEL_0, HIGH);
        digitalWrite(MUX_SEL_1, HIGH);
        break;
    default:
        break;
    }
}

uint16_t muxReadSingle(const uint8_t sensor){
    muxSelect(sensor);
    delay(10);
    return analogRead(MUX_OUT);
}

uint16_t* muxReadAll(){
    uint16_t* list = new uint16_t[4];
    for(int i = 0 ; i < 4 ; i++ ){
        list[i] = muxReadSingle(i);
    }
    return list; 
}

void muxPower(const uint8_t state){
    digitalWrite(V_CMD, ~state);     //Inverted logic : V_CMD = 3.3V -> Mux stage OFF, V_CMD = 0V -> Mux stage ON
                                    // due to the use of PMOS
}
