TOP_DIR = ..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libuser$(LIB_EXT)
COMPONENTS_libuser = button/app_lib_solutions$(LIB_EXT) \
					 xmodem/app_lib_xmodem$(LIB_EXT) \
					 solutions/app_lib_solutions$(LIB_EXT)
endif


#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include

PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile