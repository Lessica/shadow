ARCHS ?= arm64 arm64e
TARGET ?= iphone:clang:14.5:13.0

include $(THEOS)/makefiles/common.mk
SUBPROJECTS += Shadow.framework
SUBPROJECTS += Shadow.dylib
SUBPROJECTS += ShadowSettings.bundle
SUBPROJECTS += shdw
include $(THEOS_MAKE_PATH)/aggregate.mk
