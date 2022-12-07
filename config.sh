#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/ArrowOS/android_manifest.git"
export MANIFEST_BRANCH="arrow-13.0"

# Device info
export DEVICE="berlin"
export OEM="motorola"

# Lunch combo and Build target
export LUNCH_COMBO="arrow_berlin-eng"
export TARGET="bacon"

# Our output file
OUTPUT="Arrow-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/sergeantkakashi/android_device_motorola_berlin.git"
DT_BRANCH="arrow-13"

VT_LINK=""

KERNEL_SRC="https://github.com/moto-sm7325/android_kernel_motorola_sm7325.git"
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

DEPS=(
	""
)

# Generate Vendor tree?
GEN_VT=true
DUMP_LINK="https://dumps.tadiphone.dev/dumps/motorola/berlin.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

}

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
