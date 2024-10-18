#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2023-2024 The OrangeFox Recovery Project
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

# OrangeFox-specific settings #

# screen
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 72
OF_STATUS_INDENT_RIGHT := 48
OF_HIDE_NOTCH := 1
OF_CLOCK_POS := 1

# other stuff
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_FBE_METADATA_MOUNT_IGNORE := 1
OF_USE_GREEN_LED := 0

# patch avb20 - some ROM recoveries try to overwrite custom recoveries
OF_PATCH_AVB20 := 1

# quick backup defaults
OF_QUICK_BACKUP_LIST := /boot;/data;

# whether to permit free access to internal storage
OF_RUN_POST_FORMAT_PROCESS := 1

OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1

# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1

# flashlight doesn't work
OF_FLASHLIGHT_ENABLE := 0

# legacy services for battery
OF_USE_LEGACY_BATTERY_SERVICES := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 9

# maximum permissible splash image size (in kilobytes); do *NOT* increase!
OF_SPLASH_MAX_SIZE := 130

# OTA
OF_KEEP_DM_VERITY := 1
OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1

OF_DEVICE_WITHOUT_PERSIST := 1
OF_FORCE_DATA_FORMAT_F2FS := 1
OF_UNMOUNT_SDCARDS_BEFORE_REBOOT := 1
FOX_USE_DATA_RECOVERY_FOR_SETTINGS := 1
#
