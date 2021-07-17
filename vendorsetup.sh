#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2020 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#

# Configure some default settings for the build
export ALLOW_MISSING_DEPENDENCIES=true
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_VANILLA_BUILD="1"
export OF_SKIP_ORANGEFOX_PROCESS="1"
export OF_SUPPORT_OZIP_DECRYPTION="1"
export FOX_USE_BASH_SHELL="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export LC_ALL="C"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_PATCH_AVB20="1"
export TARGET_ARCH="arm64"
export TW_DEVICE_VERSION="Q10.0"

# Some device specific flags
export OF_STATUS_H="102"
export OF_TWRP_COMPATIBILITY_MODE="1"
export OF_STATUS_INDENT_LEFT="155"
export OF_STATUS_INDENT_RIGHT="48"
export OF_FL_PATH1="/system/flashlight"
export OF_FL_PATH2=""
export OF_FLASHLIGHT_ENABLE="1"
export OF_MAINTAINER="Sharan Pai"
export OF_TARGET_DEVICES="RMX2001, RMX2002, wasabi"
