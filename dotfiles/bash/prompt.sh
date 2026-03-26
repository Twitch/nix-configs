

if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
   export PS1="\[\e[38;5;10m\]\u\[\e[38;5;2m\]@\[\e[38;5;7m\]\h \[\e[38;5;33m\]\w \[\033[0m\]$ "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt