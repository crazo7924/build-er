#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/ArrowOS/android_manifest.git"
export MANIFEST_BRANCH="arrow-12.1"

# Device info
export DEVICE="evergo"
export OEM="xiaomi"

# Lunch combo and Build target
export LUNCH_COMBO="arrow_evergo-eng"
export TARGET="bacon"

# Our output file
OUTPUT="Arrow-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/Xiaomi-MT6833/device_xiaomi_evergo.git"
DT_BRANCH=""

VT_LINK=""

KERNEL_SRC="https://github.com/PixelExperience-Devices/kernel_redmi_rosemary.git"
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

DEPS=(
	"https://github.com/ArrowOS-Devices/android_hardware_xiaomi.git -b arrow-12.1 hardware/xiaomi"
)

# Generate Vendor tree?
GEN_VT=true
DUMP_LINK="https://gitlab.com/Android-Dumps/redmi/evergo.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

# Extra Command
extra_cmd_function(){
	sed -i 's/rosemary/evergo/g' device/xiaomi/evergo/BoardConfig.mk
}

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
