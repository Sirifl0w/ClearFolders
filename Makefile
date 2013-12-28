export GO_EASY_ON_ME = 1
ARCHS = armv7 arm64
THEOS_BUILD_DIR = debs

include theos/makefiles/common.mk

TWEAK_NAME = ClearFolders
ClearFolders_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
