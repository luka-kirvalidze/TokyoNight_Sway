# .bashrc
fastfetch
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#Aliases
alias nvlaunch='switcherooctl launch'

#Tokyo Night color definitions
COLOR_USER="\[\e[38;2;122;162;247m\]"
COLOR_DIR="\[\e[38;2;158;206;106m\]"
COLOR_CHAR="\[\e[38;2;190;154;247m\]"
COLOR_RESET="\[\e[0m\]"
COLOR_TEXT="\[\e[38;2;255;255;255m\]"

#Configure PS1:user@hostname ~ $
#export PS1="${COLOR_USER}\u@\h ${COLOR_DIR}\w ${COLOR_CHAR}\$${COLOR_RESET} "

#Configure PS1:user in ~ $
export PS1="${COLOR_USER}\u ${COLOR_TEXT}in ${COLOR_DIR}\w ${COLOR_CHAR}\$${COLOR_RESET} "
