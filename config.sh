#
# config.sh
#

# Manifest
export MANIFEST=""
export MANIFEST_BRANCH=""

# Device info
export DEVICE=""
export OEM=""

# Lunch combo and Build target
export LUNCH_COMBO=""
export TARGET=(
)

# Our output file
OUTPUT=""

# Device trees and dependencies
DT_LINK=""
DT_BRANCH=""

VT_LINK=""

KERNEL_SRC=""
KERNEL_PATH="kernel/${OEM}/${DEVICE}"

DEPS=(
)

# Generate Vendor tree?
GEN_VT=false
DUMP_LINK=""
DUMP_PATH="$HOME/dumps/${DEVICE}"

# Extra Command
extra_cmd_function(){
}

EXTRA_CMD=extra_cmd_function;

# Common
export SYNC_PATH="$HOME/work"
