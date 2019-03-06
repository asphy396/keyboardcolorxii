include $(THEOS)/makefiles/common.mk

TWEAK_NAME = keyboardColorXII

keyboardColorXII_LIBRARIES = colorpicker
keyboardColorXII_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += keyboardcolorxiiprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
