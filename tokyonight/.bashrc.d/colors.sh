# Tokyo Night color definitions
COLOR_USER="\[\e[38;2;122;162;247m\]"  # Tokyo Night Blue (#7aa2f7)
COLOR_DIR="\[\e[38;2;158;206;106m\]"   # Tokyo Night Green (#9ece6a)
COLOR_CHAR="\[\e[38;2;190;154;247m\]"  # Tokyo Night Purple (#bb9af7)
COLOR_TEXT="\[\e[38;2;192;202;245m\]"  # Tokyo Night Foreground (#c0caf5)
COLOR_RESET="\[\e[0m\]"

# Configure PS1: user in ~ $
export PS1="${COLOR_USER}\u ${COLOR_TEXT}in ${COLOR_DIR}\w ${COLOR_CHAR}\$${COLOR_RESET} "
