#!/bin/sh
set -o nounset  # Referencing undefined variables (which default to "")
set -o errexit  # Ignoring failing commands

filename="$1"
/bin/cat /dev/null > ${filename}

osascript -e 'display notification "Your file has been set to zero bytes in length" with title "Set File to Zero Bytes"'