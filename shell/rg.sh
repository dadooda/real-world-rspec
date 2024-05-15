
#
# Ripgrep enhancements.
#

# `rg` with colors and other friendly options baked in.
rc() {
  local A=(
    --color=always
    --colors="path:fg:0,200,200"
    --follow         # Also `-L`.
    --line-number    # Also `-n`.
    #--no-hidden     # Doesn't seem to have effect.
  )

  # NOTE: We can still pipe the output if we want to.
  rg ${A[@]} "$@" | _rg_pager
}

# Invoke our pager.
_rg_pager() {
  if [ -n "${PAGER:-}" ]; then
    ${PAGER}
  else
    less -S
  fi
}
