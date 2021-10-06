# Copyright (C) 2019 Intel Corporation
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ppv4-qos-firmware
PKG_BASE_NAME:=ppv4-qos-fw
PKG_SOURCE_PROTO:=git
PKG_VERSION:=1.4.32
PKG_RELEASE:=1
PKG_SOURCE:=$(PKG_BASE_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=$(CONFIG_UGW_PKG_SOURCE_URL)/sw_ppv4/ppv4_fw_bin.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_LICENSE:=Intel
PKG_LICENSE_FILES:=LICENSE
PKG_SOURCE_MIRROR:=0

# Prevent OpenWrt from stripping this firmware binary
STRIP=/bin/true
RSTRIP=/bin/true

-include $(INCLUDE_DIR)/package-version-override.mk
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:=PPv4 QoS Firmware
  SECTION:=firmware
  CATEGORY:=Intel
  MAINTAINER:=Intel
  SUBMENU:=Firmware
  DEPENDS:=@TARGET_intel_mips_prx300
endef

define Package/$(PKG_NAME)/config
  $(call Package/$(PKG_NAME)/override_version)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/lib/firmware/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/ppv4-qos-fw.elf $(1)/lib/firmware/ppv4-qos-fw.elf
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
