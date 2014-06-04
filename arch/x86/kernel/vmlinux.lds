
OUTPUT_ARCH(i386)
ENTRY(start_kernel)
SECTIONS
{
	. = 0x00000000;

	. = ALIGN(4);
	.text      :
	{
	  */entry.o	(.text)
	  */lowlevel_init.o	(.text)
	  *(.text)
	}

	. = ALIGN(4);
	.rodata : { *(.rodata) }

	. = ALIGN(4);
	.data : { *(.data) }

	. = ALIGN(4);
	.got : { *(.got) }

	. = ALIGN(4);
	.mmudata : { *(.mmudata) }

	. = ALIGN(4);
	__bss_start = .;
	.bss : { *(.bss) }
	_end = .;
}
