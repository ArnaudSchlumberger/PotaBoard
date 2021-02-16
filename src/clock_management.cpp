#include "clock_management.h"

void setClk32k()
{
    CCP = 0xD8;
    CLKCTRL_MCLKLOCK = 0b00000000;
    CCP = 0xD8;
    CLKCTRL_MCLKCTRLA= 0b00000001;
}

void setClk20M()
{
    CCP = 0xD8;
    CLKCTRL_MCLKLOCK = 0b00000000;
    CCP = 0xD8;
    CLKCTRL_MCLKCTRLA= 0b00000000;
}