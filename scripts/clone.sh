#!/bin/bash

# Source helpers
for helper in $(ls ${CIRRUS_WORKING_DIR}/helpers/*.sh); do
	info "Including helpers/${helper}..."
	source "${helper}"
done

# Source configurarion
source ${CONFIG}

# Change to the home directory
cd ~

# Change to the syncing directory
cd ${SYNC_PATH}

# Clone Device tree
if [ -z "${DT_BRANCH}" ]; then
	git clone ${DT_LINK} device/${OEM}/${DEVICE}
else
	git clone ${DT_LINK} -b ${DT_BRANCH} device/${OEM}/${DEVICE}
fi

# Clone vendor tree
[ ! -z "${VT_LINK}" ] && git clone --depth=1 --single-branch ${VT_LINK} vendor/${OEM}/${DEVICE}

# Clone kernel tree
[ ! -z "${KERNEL_SRC}" ] && git clone --depth=1 --single-branch ${KERNEL_SRC} ${KERNEL_PATH}

# Clone other dependencies
for dep in "${DEPS[@]}"; do
	rm -rf $(echo $dep | sed 's/ -b / /g')
	git clone --depth=1 --single-branch $dep
done

# Generate Vendor Tree?
if [ "${GEN_VT}" = true ]; then
	git clone --depth=1 --single-branch ${DUMP_LINK} ${DUMP_PATH}
	bash device/${OEM}/${DEVICE}/extract-files.sh ${DUMP_PATH} | tee vendor_${DEVICE}_gen.log > /dev/null
	haste vendor_${DEVICE}_gen.log
fi

