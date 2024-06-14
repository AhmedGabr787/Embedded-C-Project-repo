CC = arm-none-eabi-gcc
CFLAGS = -c -mcpu=$(ACH) -std=gnu11 -mthumb
LDFLAGS = -T linker.ld -nostdlib -Wl,-Map,executable.map
ACH = cortex-m4

main.o:main.c
	@echo "getting main.o"
	@$(CC) $(CFLAGS) $^ -o $@
GPIO_Prog.o:GPIO_Prog.c
	@echo "getting GPIO_Prog.o"
	@$(CC) $(CFLAGS) $^ -o $@

RCC Prog.o:RCC_Prog.c
	@echo "getting RCC Prog.o"
	@$(CC) $(CFLAGS) $^ -o $@

SysTick_Prog.o:SysTick_Prog.c
	@echo "getting SysTick_Prog.o"
	@$(CC) $(CFLAGS) $^ -o $@

startup.o:startup.c
	@echo "getting startup.o"
	@$(CC) $(CFLAGS) $^ -o $@

lcd.o:lcd.c
	@echo "getting lcd.o"
	@$(CC) $(CFLAGS) $^ -o $@

Stm32_F103C6_GPIO.o:Stm32_F103C6_GPIO.c
	@echo "getting Stm32_F103C6_GPIO.o"
	@$(CC) $(CFLAGS) $^ -o $@

executble.elf: main.o GPIO_Prog.o RCC_Prog.o SysTick_Prog.o startup.o lcd.o Stm32_F103C6_GPIO.o
	@echo "making executble.elf"
	@$(CC) $(LDFLAGS) main.o GPIO_Prog.o RCC_Prog.o SysTick_Prog.o startup.o lcd.o Stm32_F103C6_GPIO.o -o executble.elf

all:main.o GPIO_Prog.o RCC_Prog.o SysTick_Prog.o startup.o lcd.o Stm32_F103C6_GPIO.o executble.elf

clean:
	@echo "deleting files..."
	@rm -rf *.o