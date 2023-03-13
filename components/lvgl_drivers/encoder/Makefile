TOP_DIR = ../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = lib_encoder$(LIB_EXT)
endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include \
						-I $(PDIR)lvgl/src 
						
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile

