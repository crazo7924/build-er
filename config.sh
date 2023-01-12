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
export OUTPUT="Lineage-*.zip"

# Device trees and dependencies
export DT_LINK="https://github.com/realme-apollob-dev/android_device_realme_apollob.git"
export DT_BRANCH="lineage-20.0"

export KERNEL_SRC="https://github.com/realme-apollob-dev/android_kernel_realme_mt6833.git -b android-12.1"
export KERNEL_PATH="kernel/${OEM}/${DEVICE}"

# Generate Vendor tree?
export GEN_VT=true
export DUMP_LINK="https://dumps.tadiphone.dev/dumps/realme/re513cl1.git"
export DUMP_PATH="$HOME/dumps/${DEVICE}"

export EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
