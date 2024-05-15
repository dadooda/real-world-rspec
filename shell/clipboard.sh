
#
# Clipboard extensions.
#

[ -z "${BASH_VERSION}" ] && { echo "Only Bash is supported" >&2; return 1 }

# Compute and save absolute path.
_CLIPBOARD_SP=$(realpath "${BASH_SOURCE[0]%/*}")

# Store/retrieve from Windows clipboard (under WSL).
wsl-clip() {
  "${_CLIPBOARD_SP}/wsl-clip" "$@"
}
