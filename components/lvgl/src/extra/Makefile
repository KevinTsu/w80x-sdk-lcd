TOP_DIR = ../../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libextra$(LIB_EXT) 
COMPONENTS_libextra = layouts/liblayouts$(LIB_EXT) \
					libs/liblibs$(LIB_EXT) \
					others/libothers$(LIB_EXT) \
					widgets/libextrawidgets$(LIB_EXT) 



endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I ./ -I $(PDIR)include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile