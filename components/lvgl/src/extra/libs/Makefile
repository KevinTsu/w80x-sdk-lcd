TOP_DIR = ../../../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = liblibs$(LIB_EXT) 
COMPONENTS_liblibs =    bmp/libbmp$(LIB_EXT) \
					    ffmpeg/libffmpeg$(LIB_EXT) \
						freetype/libfreetype$(LIB_EXT) \
						fsdrv/libfsdrv$(LIB_EXT) \
						gif/libgif$(LIB_EXT) \
						png/libpng$(LIB_EXT) \
						qrcode/libqrcode$(LIB_EXT) \
						rlottie/librlottie$(LIB_EXT) \
						sjpg/libsjpg$(LIB_EXT) 

endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I ./ -I $(PDIR)include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile