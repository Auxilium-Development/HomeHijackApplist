include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = homehijackpreferences
homehijackpreferences_FILES = HHIRootListController.m
homehijackpreferences_INSTALL_PATH = /Library/PreferenceBundles
homehijackpreferences_FRAMEWORKS = UIKit
homehijackpreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/homehijackpreferences.plist$(ECHO_END)
