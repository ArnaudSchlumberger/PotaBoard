#ifndef SLEEP_H
#define SLEEP_H

void setSleepModeStandby();
void enableSleepMode();
void sleep();

void sleepConfig(); //Initializes and sets registers to allow Standby Sleep Mode and UART Wake-Up Interrupt
#endif