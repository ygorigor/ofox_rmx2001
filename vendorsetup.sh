#
#    This file is part of the OrangeFox Recovery Project
#     Copyright (C) 2021-2024 The OrangeFox Recovery Project
#
#    OrangeFox is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    any later version.
#
#    OrangeFox is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#     This software is released under GPL version 3 or any later version.
#    See <http://www.gnu.org/licenses/>.
#
#     Please maintain this if you use this script or any part of it
#
FDEVICE="RMX2001"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.0.zip
    export TW_DEFAULT_LANGUAGE="en"
    export LC_ALL="C"
    export ALLOW_MISSING_DEPENDENCIES=true
    export FOX_USE_NANO_EDITOR=1
    export FOX_USE_BASH_SHELL=1
    export FOX_ASH_IS_BASH=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_ZIP_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_USE_LZ4_BINARY=1
    export FOX_USE_ZSTD_BINARY=1
    export FOX_DELETE_AROMAFM=1
    export TARGET_DEVICE_ALT="RMX2001, RMX2151, wasabi"
    export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
    export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
    export OF_DEFAULT_KEYMASTER_VERSION=4.1
    export OF_DEFAULT_TIMEZONE="WET-2;WET"
    export OF_TWRP_COMPATIBILITY_MODE=1

    # R11.1 Settings
    export FOX_VERSION="R12.1_1"
    export OF_MAINTAINER="ygorigor"

    export FOX_DRASTIC_SIZE_REDUCTION=1
    export OF_USE_LZMA_COMPRESSION=1

else
    if [ -z "$FOX_BUILD_DEVICE" -a -z "$BASH_SOURCE" ]; then
        echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
    fi
fi
#