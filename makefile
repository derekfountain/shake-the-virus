# Shake-the-virus, a ZX Spectrum game
# Copyright (C) 2022 Derek Fountain
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

CC=zcc
AS=zcc
APPMAKE=z88dk-appmake
TARGET=+zx
VERBOSITY=-vn
CRT=31

PRAGMA_FILE=zpragma.inc

# Tested at an arbitrary point in development. -SO2 ran test in 11.80 secs and left 4228 bytes free.
# -SO3 ran test in 11.00 secs and left 4582 bytes free. So -SO3 produces smaller, faster code.
# 
#C_OPT_FLAGS=-SO3 --max-allocs-per-node200000 -DNDEBUG --c-code-in-asm --std-sdcc2x --list
C_OPT_FLAGS=--c-code-in-asm --std-sdcc2x --list

CFLAGS=$(TARGET) $(VERBOSITY) -c $(C_OPT_FLAGS) -preserve -compiler sdcc -clib=sdcc_iy -pragma-include:$(PRAGMA_FILE)
LDFLAGS=$(TARGET) $(VERBOSITY) -m -clib=sdcc_iy -pragma-include:$(PRAGMA_FILE)
ASFLAGS=$(TARGET) $(VERBOSITY) -c

CPP_FLAGS=$(TARGET) $(VERBOSITY) -c -compiler sdcc -clib=sdcc_iy -pragma-include:$(PRAGMA_FILE) -E

SYMBOLS_GENERATOR=./generate_symbols.pl
MAP=stv.map

TAGGABLE_SRC_GENERATOR=./generate_taggable_src.pl
TAGGABLE_SRC=stv.taggable_src

TAGS_GENERATOR=etags
TAGS=TAGS

MEM_FREE=./how_much_memory_left.sh

EXEC=stv.tap
EXEC_OUTPUT=stv
SYM_OUTPUT=stv.sym

OBJECTS = main.o \
	  player.o \
	  controls.o \
	  int.o \
	  level.o \
	  levels.o \
	  levels_01234567.o \
	  levels_89.o \
	  levels_1011.o \
	  levels_1213.o \
	  levels_1415.o \
	  levels_primitives.o \
	  swarm.o \
    virion.o \
	  print_str.o \
	  timer.o \
	  sound.o \
	  snow_table.o \
	  snow_demo_plot.o \
	  font.o
	  
# Objects built from C files (as opposed to ASMs)
C_OBJECTS = main.o \
            player.o \
	   			  controls.o \
	          int.o \
	          level.o \
            levels.o \
            levels_01234567.o \
					  levels_89.o \
					  levels_1011.o \
					  levels_1213.o \
					  levels_1415.o \
	  				levels_primitives.o \
	          swarm.o \
            virion.o \
            print_str.o \
            timer.o \
            sound.o

LEVEL01234567_INCS = $(wildcard level[01234567].inc)
LEVEL_INCS = $(wildcard level1*.inc)

# A .cpre is the output of the C preprocessor
PREPROCESSED = $(C_OBJECTS:.o=.cpre)

# For now, if any header changes, recompile the lot.
HEADERS = main.h \
	  player.h \
	  level.h \
	  levels.h \
	  levels_01234567.h \
	  levels_89.h \
	  levels_1011.h \
	  levels_1213.h \
	  levels_1415.h \
	  levels_primitives.h \
	  controls.h \
	  int.h \
	  swarm.h \
	  virion.h \
	  print_str.h \
	  timer.h \
	  snow.h \
	  sound.h

# Not used:	  
#	  rtunes.h

# Run the preprocessor on *.c files to get *.cpre files
%.cpre: %.c $(PRAGMA_FILE) $(HEADERS)
	$(CC) $(CPP_FLAGS) -o $@ $<

%.o: %.c $(PRAGMA_FILE) $(HEADERS) sections.asm
	$(CC) $(CFLAGS) sections.asm -o $@ $<

%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $<


all : clean_tmp $(EXEC) $(SYM_OUTPUT) $(TAGGABLE_SRC) $(TAGS) report

# Special rules for the levels files to make sure it picks up changes to the include
# files generated by the level creator
#
levels_01234567.o : levels_01234567.c $(PRAGMA_FILE) $(HEADERS) $(LEVEL01234567_INCS)
	$(CC) $(CFLAGS) -o $@ $<
	
# Might need to do better here. There are several level*.c files with dependences on
# level*.inc files.	

levels.o : levels.c $(PRAGMA_FILE) $(HEADERS) $(LEVEL_INCS)
	$(CC) $(CFLAGS) -o $@ $<

# Rule to build the executable.
$(EXEC) : $(OBJECTS)
	$(CC) $(LDFLAGS) -startup=$(CRT) $(OBJECTS) -o $(EXEC_OUTPUT)
	$(APPMAKE) +glue -b stv --filler 0xDF --clean
	$(APPMAKE) +zx -b stv__.bin --org 32768 --blockname stv -o $(EXEC)

# Build the symbols table after the executable
$(SYM_OUTPUT): $(EXEC)
	$(SYMBOLS_GENERATOR) < $(MAP) > $(SYM_OUTPUT)

# Tagged source needs symbol table
$(TAGGABLE_SRC): $(SYM_OUTPUT)
	$(TAGGABLE_SRC_GENERATOR) $(SYM_OUTPUT) *.c.lis > $(TAGGABLE_SRC)

# TAGS file generated each time the binary is rebuilt for any reason
$(TAGS): $(EXEC)
	$(TAGS_GENERATOR) *.h *.c

# After everything, report the exec size
.PHONY: report
report: $(SYM_OUTPUT) $(TAGGABLE_SRC) $(TAGS)
	$(MEM_FREE)

.PHONY: clean_tmp
clean_tmp:
	rm -f /tmp/tmpXX* 

.PHONY: clean
clean :
	rm -f *.tap *.cpre *.bin *.map *.sym *.o *.lis stv*.inc TAGS *~ $(TAGGABLE_SRC)
