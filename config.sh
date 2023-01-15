#
# config.sh
#

# Manifest
MANIFEST="https://github.com/LineageOS/android.git"
MANIFEST_BRANCH="lineage-20.0"

# Device info
DEVICE="apollob"
OEM="realme"

# Lunch combo and Build target
LUNCH_COMBO="lineage_apollob-userdebug"
TARGET="bacon"

# Our output file
OUTPUT="lineage-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/realme-apollob-dev/android_device_realme_apollob.git"
DT_BRANCH="lineage-20.0"

DEPS=(
	"https://github.com/realme-apollob-dev/android_hardware_oplus.git hardware/oplus" 
        "https://github.com/realme-apollob-dev/android_hardware_mediatek.git hardware/mediatek" 
        "https://github.com/realme-apollob-dev/android_device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr"
        "https://github.com/realme-apollob-dev/android_packages_apps_RealmeParts.git packages/apps/RealmeParts" 
        "https://github.com/realme-apollob-dev/android_kernel_realme_mt6833_vendor.git kernel/realme/vendor" 
)

KERNEL_SRC="https://github.com/realme-apollob-dev/android_kernel_realme_mt6833.git -b android-12.1"
KERNEL_PATH="kernel/realme/mt6833"

# Generate Vendor tree?
GEN_VT=true
DUMP_LINK="https://dumps.tadiphone.dev/dumps/realme/re513cl1.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

# Common
SYNC_PATH="$HOME/work"
