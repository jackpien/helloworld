export PS1=${debian_chroot:+($debian_chroot)}'\[\033[01;31m\]\u@\h\[\033[00m\]:\w\n\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

function e() {
    # emacs -g 80x80 ${1} &
    emacs ${1} &
}

export EDITOR=emacs

# Colorize folders, executables, etc
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
