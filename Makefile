include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HomeHijack
HomeHijack_FILES = Tweak.xm
HomeHijack_LIBRARIES = applist
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += homehijackpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
