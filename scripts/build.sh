#!/bin/bash

# What's our project's root directory?
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"

# Source helpers
for helper in $(ls ${PROJECT_DIR}/helpers/*.sh); do
	info "Including helpers/${helper}..."
	source "${helper}"
done

# Source configurarion
source ${CONFIG}

# Change to the home directory
cd ~

# Change to the syncing directory
cd ${SYNC_PATH}

# Setup Environment
source build/envsetup.sh

# Run the extra command
[ ! -z "${EXTRA_CMD}" ] && eval ${EXTRA_CMD}

# Lunch the target
lunch ${LUNCH_COMBO}

# Start building
mka -j$(nproc) ${TARGET} | tee build.log > /dev/null

# Record the Building return Code
BUILD_RETURN_CODE="$?"

haste build.log
curl -F f=@build.log -F shorturl=0 -F expire=14400 https://oshi.at | tee

# Abort or Continue?
if [ "${BUILD_RETURN_CODE}" = "0" ]; then
	succeed "### Build Completed Successfully!"
else
	abort "### Build Failed!"
fi

exit 0
