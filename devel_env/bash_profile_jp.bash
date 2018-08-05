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
export LS_COLORS="di=1;34:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# Enable ls color depending on platform
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    alias ls='ls -GFh --color=auto'
elif [[ "$unamestr" == 'Darwin' ]]; then
    alias ls='ls -GFh'
fi
