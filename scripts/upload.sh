#!/bin/bash

# Source helpers
for helper in $(ls ${HOME}/helpers/*.sh); do
	info "Including helpers/${helper}..."
	source "${helper}"
done

# Source configurarion
source ${CONFIG}

# Change to the home directory
cd ${HOME}

# Change to the syncing directory
cd ${SYNC_PATH}

# Change to $OUT
cd out/target/product/${DEVICE}

# Upload to WeTransfer - expires after 7 days
info "Uploading to WeTransfer..."
transfer wet ${OUTPUT}

# Mirror to oshi.at - 30 days validity
info "Mirroring to https://oshi.at"
curl -F f=@$(ls ${OUTPUT}) -F shorturl=0 -F expire=43200 https://oshi.at

# Haste some files
for file in $(ls *.txt *.json); do
	printf "%s: %s\n" "$file" "$(haste $file)"
done

# Done!
succeed "Done!"

exit 0
