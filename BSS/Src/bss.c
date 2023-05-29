#include "bss.h"
#define LED1to8_PDR_VAL 				((1 << LED1) | (1 << LED2) | (1 << LED3) | (1 << LED4) | (1 << LED5) | (1 << LED6) | (1 << LED7) | (1 << LED8))
#define LED1to8_OUTPUT()				(PORTD.PDR.BYTE |= LED1to8_PDR_VAL)
#define LED9to12_PDR_VAL				((1 << LED9) | (1 << LED10) | (1 << LED11) | (1 << LED12))
#define LED9to12_OUTPUT()				(PORTE.PDR.BYTE |= (LED9to12_PDR_VAL))
#define LEDS_OUTPUT()					do{LED1to8_OUTPUT(); LED9to12_OUTPUT();}while(0)


void BSS_Init(void){
	LEDS_OUTPUT();
}
void LED(LEDS led, LED_Status status){
	if(led<9){
		if(status == LED_ON) PORTD.PODR.BYTE &= ~(1 << led);
		else PORTD.PODR.BYTE |= (1 << led);
	}else{
		if(status == LED_ON) PORTE.PODR.BYTE &= ~(1 << led);
		else PORTE.PODR.BYTE |= (1 << led);
	}
}

void LED_Red(LED_Status status){

}
void LED_Green(LED_Status status){

}
