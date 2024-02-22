TOP_DIR = ../../
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = app_lib_solutions$(LIB_EXT)
COMPONENTS_app_lib_solutions=switch_panel/app_lib_switch_panel$(LIB_EXT) 
endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include

PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile