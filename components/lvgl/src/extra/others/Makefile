TOP_DIR = ../../../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libothers$(LIB_EXT) 
COMPONENTS_libothers =  fragment/libfragment$(LIB_EXT) \
					    gridnav/libgridnav$(LIB_EXT) \
						ime/libime$(LIB_EXT) \
						imgfont/libimgfont$(LIB_EXT) \
						monkey/libmonkey$(LIB_EXT) \
						msg/libmsg$(LIB_EXT) \
						snapshot/libsnapshot$(LIB_EXT) 

endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I ./ -I $(PDIR)include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile