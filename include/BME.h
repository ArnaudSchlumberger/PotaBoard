#ifndef BME_H
#define BME_H

#define BME280_ADDR 0x76
#define BME280_ID_REG_ADDR 0xD0
#define BME280_ID_VALUE 0x58

#define BME280_CTRL_MEAS_REG_ADDR 0x74
#define BME280_CTRL_MEAS_FORCED_MODE 0b01101101

#define BME280_TEMP_REG 0xFA
#define BME280_PRESS_REG 0xF7

int BME_readID();

void BME_config();

#endif