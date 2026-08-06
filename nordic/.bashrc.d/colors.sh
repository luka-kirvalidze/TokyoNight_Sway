# Nordic color definitions
COLOR_USER="\[\e[38;2;136;192;208m\]"  # Nord8 (Frost Cyan)
COLOR_DIR="\[\e[38;2;163;190;140m\]"   # Nord14 (Aurora Green)
COLOR_CHAR="\[\e[38;2;180;142;173m\]"  # Nord15 (Aurora Purple)
COLOR_TEXT="\[\e[38;2;216;222;233m\]"  # Nord4 (Snow Storm White)
COLOR_RESET="\[\e[0m\]"

# Configure PS1: user in ~ $
export PS1="${COLOR_USER}\u ${COLOR_TEXT}in ${COLOR_DIR}\w ${COLOR_CHAR}\$${COLOR_RESET} "
