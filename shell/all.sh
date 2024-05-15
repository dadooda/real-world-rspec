
#
# Load all enhancements at once.
#

[ -z "${BASH_VERSION}" ] && { echo "Only Bash is supported" >&2; return 1 }

for FN in "${BASH_SOURCE[0]%/*}"/*.sh; do
  [ "${FN}" = "${BASH_SOURCE[0]}" ] && continue
  echo "Loading '${FN}'"
  . "${FN}"
done
