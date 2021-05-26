ARCHS = arm64e arm64
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HideSuggestedMessenger

HideSuggestedMessenger_FILES = Tweak.xm
HideSuggestedMessenger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
