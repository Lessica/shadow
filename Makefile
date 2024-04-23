ARCHS ?= arm64 arm64e
TARGET ?= iphone:clang:15.5:13.0

ifeq ($(ROOTLESS),1)
export THEOS_PACKAGE_SCHEME := rootless
endif

include $(THEOS)/makefiles/common.mk
SUBPROJECTS += Shadow.framework
SUBPROJECTS += Shadow.dylib
SUBPROJECTS += ShadowSettings.bundle
SUBPROJECTS += shdw
include $(THEOS_MAKE_PATH)/aggregate.mk
