#!/bin/bash

# What's our project's root directory?
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"

# Source helpers
for helper in $(ls ${PROJECT_DIR}/helpers/*.sh); do
	info "Including ${helper}..."
	source "${helper}"
done

# Source configurarion
source ${CONFIG}

# Change to the home directory
cd ~

# Create sync directory
mkdir -p ${SYNC_PATH}

# Change to the syncing directory
cd ${SYNC_PATH}

# Initialise the repo
if [ "${MANIFEST_BRANCH}" = "" ]; then
	repo init --depth=1 -u ${MANIFEST}
else
	repo init --depth=1 -u ${MANIFEST} -b ${MANIFEST_BRANCH}
fi

# Sync Repo
if [ "$(nproc)" -gt 8 ]; then
	warn "Using -j8 as the sync value as using more than -j8 may cause issues!"
	repo sync -j8 --force-sync --no-clone-bundle --no-tags
else
	repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
fi

# Finish
succeed "The ROM source has been successfully synced to ${SYNC_PATH}}"
exit 0
