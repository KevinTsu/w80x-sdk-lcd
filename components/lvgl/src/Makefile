TOP_DIR = ../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = liblvglsrc$(LIB_EXT)
COMPONENTS_liblvglsrc = core/libcore$(LIB_EXT)\
						draw/libdraw$(LIB_EXT)\
						extra/libextra$(LIB_EXT)\
						font/libfont$(LIB_EXT)\
						hal/libhal$(LIB_EXT)\
						misc/libmisc$(LIB_EXT)\
						widgets/libwidgets$(LIB_EXT)

endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I $(PDIR)include \
						-I $(PDIR)lvgl/src 
						
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile

