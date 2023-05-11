TOP_DIR = ../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = liblvgldrivers$(LIB_EXT)
COMPONENTS_liblvgldrivers = encoder/lib_encoder$(LIB_EXT) \
							lcd/lib_lcd$(LIB_EXT) \
							psram/lib_psram$(LIB_EXT) \
							spiflash/lib_spiflash$(LIB_EXT) \
							touchpad/lib_touchpad$(LIB_EXT) 
endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include \
						-I $(PDIR)lvgl/src 
						
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile

