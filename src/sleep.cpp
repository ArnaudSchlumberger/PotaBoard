#include "sleep.h"
#include <Arduino.h>

void setSleepModeStandby(){
    SLPCTRL_CTRLA |= (0b00000010);
}

void enableSleepMode(){
    SLPCTRL_CTRLA |= (0b00000001);
}

void sleep(){
    asm("SLEEP");
}

void sleepConfig(){
    //sets Sleep mode to Standby (bit 2 & 1 = 01) and enables sleep mode (bit 0 = 1)
    SLPCTRL_CTRLA |= 0b1 << SLPCTRL_SMODE0_bp;
    SLPCTRL_CTRLA &= ~(0b1<< SLPCTRL_SMODE1_bp);
    SLPCTRL_CTRLA |= 0b1 << SLPCTRL_SEN_bp;
    //see SLPCTRL section 10 / datasheet
    //USART SFDEN (23.5.7) -> system wake up when high (IDLE) to low (START) transition is detected
    USART0_CTRLB |= (0b1)<<USART_SFDEN_bp;
}