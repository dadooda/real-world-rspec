
#
# Pagination and code browsing enhancements.
#

[ -z "${BASH_VERSION}" ] && { echo "Only Bash is supported" >&2; return 1; }

# Paginate `/path/to/file[:line]` directly from Windows clipboard (under WSL).
c() {
  local CB
  CB=$(wsl-clip)
  if [ $? != 0 ]; then
    echo "Error getting clipboard contents" >&2
    return 1
  fi

  if [ -z "${CB}" ]; then
    echo "The clipboard is empty" >&2
    return 1
  fi

  local LINE
  # Allow for inaccurate selection. Anything after ":123" is discarded.
  LINE=`echo "${CB}" | rg '^.+:(\d+).*$' -r '$1'`

  local A=( )

  local FN
  if [ -n "$LINE" ]; then
    A+=(+${LINE})
    FN=`echo "$CB" | rg '^\s*(.+?):\d+.*$' -r '$1'`
  else
    FN="${CB}"
  fi

  A+=("${FN}")

  ${PAGER:-less} "${A[@]}"
}
