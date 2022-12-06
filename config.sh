#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/crdroidandroid/android.git"
export MANIFEST_BRANCH="13.0"

# Device info
export DEVICE="rosemary"
export OEM="xiaomi"

# Lunch combo and Build target
export LUNCH_COMBO="lineage_rosemary-userdebug"
export TARGET="bacon"

# Our output file
OUTPUT="CrDroid-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/sergeantkakashi/device_redmi_rosemary"
DT_BRANCH=""

VT_LINK=""

KERNEL_SRC="https://github.com/PixelExperience-Devices/kernel_redmi_rosemary.git"
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

DEPS=(
	"https://github.com/crdroidandroid/android_hardware_xiaomi.git -b 13.0 hardware/xiaomi"
)

# Generate Vendor tree?
GEN_VT=true
DUMP_LINK="http://code.input.sh/DumprX/redmi/rosemary.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

}

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
