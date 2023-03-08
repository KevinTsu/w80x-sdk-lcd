TOP_DIR = ../../../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libothers$(LIB_EXT) 
COMPONENTS_libothers =  basic/libbasic$(LIB_EXT) \
					    default/libdefault$(LIB_EXT) \
						mono/libmono$(LIB_EXT) 

endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I ./ -I $(PDIR)include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile