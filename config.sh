#
# config.sh
#

# Manifest
export MANIFEST="https://github.com/PixelExperience/manifest.git"
export MANIFEST_BRANCH="eleven"

# Device info
export DEVICE="k1002"
export OEM="malata"

# Lunch combo and Build target
export LUNCH_COMBO="aosp_k1002-eng"
export TARGET="bacon"

# Our output file
OUTPUT="PixelExperience-*.zip"

# Device trees and dependencies
DT_LINK="https://github.com/sergeantkakashi/device_malata_k1002.git"
DT_BRANCH="eleven"

VT_LINK=""

KERNEL_SRC=""
KERNEL_PATH=""

DEPS=(
	""
)

# Generate Vendor tree?
GEN_VT=true
DUMP_LINK="http://code.input.sh/DumprX/unowhy/Y10G001S4M.git"
DUMP_PATH="$HOME/dumps/${DEVICE}"

}

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
