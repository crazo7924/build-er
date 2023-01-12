#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/LineageOS/android.git"
export MANIFEST_BRANCH="lineage-20.0"

# Device info
export DEVICE="apollob"
export OEM="realme"

# Lunch combo and Build target
export LUNCH_COMBO="lineage_apollob-userdebug"
export TARGET="bacon"

# Our output file
OUTPUT="Lineage-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/realme-apollob-dev/android_device_realme_apollob.git"
DT_BRANCH="lineage-20.0"

VT_LINK="https://github.com/Mayuri-Chan/proprietary_vendor_xiaomi_garden.git"
VT_BRANCH= "lineage-20.0"

KERNEL_SRC="https://github.com/realme-apollob-dev/android_kernel_realme_mt6833.git -b android-12.1"
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

# Generate Vendor tree?
GEN_VT=false
DUMP_LINK="https://gitlab.com/Android-Dumps/redmi/dandelion.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
