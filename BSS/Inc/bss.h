#ifdef __cplusplus
extern "C"{
#endif
#ifndef __BSS_H__
#define __BSS_H__
#include "iodefine.h"
#include <stdint.h>

typedef enum{
	LED1,
	LED2,
	LED3,
	LED4,
	LED5,
	LED6,
	LED7,
	LED8,
	LED9=0,
	LED10,
	LED11,
	LED12
}LEDS;

typedef enum{
	LED_ON,
	LED_OFF
}LED_Status;

void BSS_Init(void);
void LED(LEDS led, LED_Status status);
void LED_Red(LED_Status status);
void LED_Green(LED_Status status);

#endif
#ifdef __cplusplus
}
#endif
