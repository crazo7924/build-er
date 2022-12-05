#
# helpers/functions.sh
#

# Define colour codes
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
CYAN='\033[0;36m'
NORMAL='\033[0m'

# Define Functions
abort(){
	[ ! -z "${@}" ] && echo -e ${RED}"ERROR: ${@}"${NORMAL}
	exit 1
}

haste(){
		(
			for BINARY in curl jq; do
				command -v ${BINARY} &>/dev/null || {
					echo "ERROR: ${BINARY} is not installed" >&2
					exit 1
				}
			done
		[[ -z ${HASTE_URL} ]] && HASTE_URL=https://paste.myself5.de
		RESULT=$(curl -sf --data-binary @"${1:--}" "${HASTE_URL}"/documents) || {
			echo "ERROR: failed to post document, ca-certificates might need to be installed" >&2
			false
		}
		echo "${HASTE_URL}/$(jq -r .key <<<"${RESULT}")"
	);
}

info(){
	echo -e ${CYAN}"Info: ${@}"${NORMAL}
}

succeed(){
	echo -e ${GREEN}"${@}"${NORMAL}
}

warn(){
	echo -e ${ORANGE}"WARNING: ${@}"${NORMAL}
}
