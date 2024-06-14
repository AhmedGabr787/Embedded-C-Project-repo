ENTRY(Reset_Handler)

MEMORY{
	Flash(rx): ORIGIN = 0x08000000 , LENGTH = 64K
	SRAM(rwx): ORIGIN = 0x20000000 , LENGTH = 20K
}

SECTIONS{
	.text :
	{
		*(.isr_vector)
		*(.text)
		*(.rodata)
		. = ALIGN(4);
		_etext_ = . ;
	}>Flash

	.data :
	{
		_sdata_ = . ;
		*(.data)
		. = ALIGN(4);
		_edata_ = . ;
	}>SRAM AT> Flash
	
	.bss :
	{
		_sbss_ = . ;
		*(.bss)
		. = ALIGN(4);
		_ebss_ = . ;
	}>SRAM


}