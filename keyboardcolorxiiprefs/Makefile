include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = keyboardcolorxiiprefs
keyboardcolorxiiprefs_FILES = keyboardcolorxiiprefsRootListController.m
keyboardcolorxiiprefs_INSTALL_PATH = /Library/PreferenceBundles
keyboardcolorxiiprefs_FRAMEWORKS = UIKit
keyboardcolorxiiprefs_PRIVATE_FRAMEWORKS = Preferences
keyboardcolorxiiprefs_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/keyboardcolorxiiprefs.plist$(ECHO_END)
