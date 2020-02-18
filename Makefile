#
# Copyright (C) 2007-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

BOARD:=intel_mips
BOARDNAME:=Intel MIPS
FEATURES:=squashfs
#SUBTARGETS:=xrx200 xway xway_legacy falcon
VENDOR_PATH="/opt/intel"
MAINTAINER:=John Crispin <john@phrozen.org>

KERNEL_PATCHVER:=4.4

define Target/Description
	Build firmware images for Intel MIPS SoC
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
