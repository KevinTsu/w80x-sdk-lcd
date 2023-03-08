TOP_DIR = ../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libdemos$(LIB_EXT)
COMPONENTS_libdemos = benchmark/libbenchmark$(LIB_EXT)\
						keypad_encoder/libkeypad_encoder$(LIB_EXT)\
						music/libmusic$(LIB_EXT)\
						stress/libstress$(LIB_EXT)\
						widgets/libwidgets$(LIB_EXT)

endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include \
						-I $(PDIR)lvgl/src 
						
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile

