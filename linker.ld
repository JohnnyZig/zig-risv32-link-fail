ENTRY(_start);

MEMORY
{
	flash (rx): ORIGIN = 0x42000000,  LENGTH = 4M
	iram  (rx): ORIGIN = 0x40380000,  LENGTH = 192k
	dram  (rw): ORIGIN = 0x3FC80000 + LENGTH(iram), LENGTH = 192k
}

SECTIONS
{
	.text :
	{
		LONG(0xaedb041d)
		LONG(0xaedb041d)
		KEEP(*(.text.start))
		KEEP(*(.text .text.*))
	} > flash

	.data :
	{
		*(.data*)
		__global_pointer$ = . + 0x800;
	} > dram AT> flash

	.bss (NOLOAD) :
	{
		*(.bss*)
	} > dram

	.ram :
	{
		. = ALIGN(256);
		KEEP(*(.ram.vector_table));
		. = ALIGN(4);
		*(.ram_text ram_text.*)
	} > iram AT > flash
}

__stack_top = ORIGIN(dram) + LENGTH(dram);
