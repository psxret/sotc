EE	= sce/ee
CHK = md5sum -c

TARGET	= sotc
LIBS	=

LIBDIR      = $(EE)/lib
INCDIR      = $(EE)/include

LCFILE      = linker.ld
PREFIX      = ./sce/ee/gcc/bin/ee
AS          = $(PREFIX)-gcc
CC          = $(PREFIX)-gcc
LD          = $(PREFIX)-gcc

CFLAGS      = -O2 -Wall -Wa,-al -fno-common
ASFLAGS     = -c -xassembler-with-cpp -Wa,-al
LDFLAGS     = -Wl,-Map,$(TARGET).map -mno-crt0 -L$(LIBDIR) -lm -nostdlib -s

ASM_OBJS := $(patsubst $(SRC_DIR)/%.asm,$(BUILD_DIR)/%.asm.obj,$(ASM_SRCS))
OBJS	= foo.o

all: $(TARGET).elf

clean:
	rm -f *.map *.lst *.o *.elf

$(TARGET).elf: $(OBJS)
	$(LD) -o $@ -T $(LCFILE) $(LDFLAGS)
	$(CHK) sotc.md5


%.o: %.S
	$(AS) $(ASFLAGS) -I$(INCDIR) -o $@ $< > $*.lst
