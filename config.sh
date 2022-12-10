#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/crdroidandroid/android.git"
export MANIFEST_BRANCH="12.1"

# Device info
export DEVICE="evergo"
export OEM="xiaomi"

# Lunch combo and Build target
export LUNCH_COMBO="lineage_garden-userdebug"
export TARGET="bacon"

# Our output file
OUTPUT="CrDroid-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/sergeantkakashi/android_device_xiaomi_garden.git"
DT_BRANCH="11"

VT_LINK="https://github.com/Mayuri-Chan/proprietary_vendor_xiaomi_garden.git"
VT_BRANCH= "11"
KERNEL_SRC="https://github.com/MiCode/Xiaomi_Kernel_OpenSource.git -b dandelion-q-oss"
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

DEPS=(
	"https://github.com/crdroidandroid/android_hardware_xiaomi.git -b 12.1 hardware/xiaomi"
)

# Generate Vendor tree?
GEN_VT=false
DUMP_LINK="https://gitlab.com/Android-Dumps/redmi/dandelion.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
