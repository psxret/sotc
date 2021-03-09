_stack_size = 0x00100000;
_stack = -1;
_heap_size = -1;

/* GROUP(-lc -lkernl -lgcc) */
ENTRY(_start)
INPUT(
	foo.o
)
PHDRS {
	reginfo 0x70000000;
	text PT_LOAD;
	data PT_LOAD;
}

SECTIONS {
	.text		0x00100000: {
		*(.text)
		*(.text.*)
    		*(.gnu.linkonce.t*)
		KEEP (*(.init))
		KEEP (*(.fini))
		QUAD(0)
	} :text
	.text_nop	:	{ *(.text_nop) } :text
	
	.reginfo		  : { KEEP(*(.reginfo)) } :reginfo :text
	.data		ALIGN(128): { 
		*(.data)
	    	*(.data.*)
    		*(.gnu.linkonce.d*)
	 } :data
	.ctors 			  : {
		KEEP (*crtbegin.o(.ctors))
		KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
	    	KEEP (*(SORT(.ctors.*)))
		KEEP (*(.ctors))	
	} :data
  	.dtors    : 	{
    		KEEP (*crtbegin.o(.dtors))
    		KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
    		KEEP (*(SORT(.dtors.*)))
    		KEEP (*(.dtors))
  	} :data
	.eh_frame	:	{
		*(.eh_frame)
	} :data

	.rodata		ALIGN(128): {
		*(.rodata)
		*(.rodata.*)
		*(.gnu.linkonce.r*)
	} :data
	.rdata		ALIGN(128): { *(.rdata) }
	.gcc_except_table ALIGN(128): { *(.gcc_except_table) }
	_gp = ALIGN(128) + 0x7ff0;
	.lit8       	ALIGN(128): { *(.lit8) }
	.lit4       	ALIGN(128): { *(.lit4) } :data
	.data_nop	:	{ *(.data_nop) } :data
	.sdata		ALIGN(128): {
		*(.sdata)
		*(.sdata.*)
		*(.gnu.linkonce.s*)
	 } :data
	.sbss		ALIGN(128): { _fbss = .; *(.sbss) *(.scommon) } :data
	.bss		ALIGN(128): { *(.bss) } :data
	.mdebug.eabi64	0x00000000: { *(.mdebug.eabi64) }
	/*
        .stack          ALIGN(128)(NOLOAD): {
		 _stack = .;
                 . += _stack_size;
        }
	*/
	end = .;
	_end = .;
	/* _heap_end = . + _heap_size */
	.spad		0x70000000: {
		 *(.spad)
	}
}
