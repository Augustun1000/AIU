#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
#Auto startx
TTY="$(/usr/bin/tty | sed 's:.*/::')"
if [[ ! ${DISPLAY} && ${TERM} == 'linux' && ${TTY} == 'tty1' ]]; then
  unset TTY
  exec startx
fi
if [[ ! ${DISPLAY} && ${TERM} == 'linux' && ${TTY} == 'tty1' ]]; then
  unset TTY
  exec qtile start -b wayland
fi
unset TTY
