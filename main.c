
#include <stdint.h>
#include "stm32f103x6.h"
#include "Stm32_F103C6_GPIO.h"
#include "lcd.h"


void clock_init()
{
	//Enable port A clock
	RCC_GPIOA_CLK_EN();
	//Enable port B clock
	RCC_GPIOB_CLK_EN();
}
void wait_ms(uint32_t time){
	uint32_t i,j;
	for(i=0;i<time;i++)
		for(j=0;j<255;j++);
}//hint time :100 == 1 sec

int main(void)
{
	clock_init();
	lcd_init();
	while(1)
	{
		// implementation
		lcd_set_position(0,0);
		lcd_send_string("Hi I'am AG !");	
		lcd_clear();
		lcd_set_position(0,0);
		lcd_send_string("it's my Project");
		lcd_clear();
		wait_ms(300);
		lcd_set_position(0,0);
		lcd_send_string("Keep it up !");
		lcd_clear();		

	}

}