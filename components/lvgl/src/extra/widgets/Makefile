TOP_DIR = ../../../../..
sinclude $(TOP_DIR)/tools/w800/conf.mk

ifndef PDIR
GEN_LIBS = libextrawidgets$(LIB_EXT) 
COMPONENTS_libextrawidgets = animimg/libanimimg$(LIB_EXT) \
							 calendar/libcalendar$(LIB_EXT) \
							 chart/libchart$(LIB_EXT) \
						  	 colorwheel/libcolorwhell$(LIB_EXT) \
							 imgbtn/libimgbtn$(LIB_EXT) \
						 	 keyboard/libkeyboard$(LIB_EXT) \
							 led/libled$(LIB_EXT) \
							 list/liblist$(LIB_EXT) \
							 menu/libmenu$(LIB_EXT) \
							 meter/libmeter$(LIB_EXT) \
							 msgbox/libmsgbox$(LIB_EXT) \
							 span/libspan$(LIB_EXT) \
							 spinbox/libspinbox$(LIB_EXT) \
							 spinner/libspinner$(LIB_EXT) \
							 tabview/libtabview$(LIB_EXT) \
							 tileview/libtileview$(LIB_EXT) \
							 win/libwin$(LIB_EXT) 




endif

#DEFINES +=

sinclude $(TOP_DIR)/tools/w800/rules.mk

INCLUDES := $(INCLUDES) -I ./ -I $(PDIR)include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile