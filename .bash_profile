#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#Auto startx
TTY="$(/usr/bin/tty | sed 's:.*/::')"
if [[ ! ${DISPLAY} && ${TERM} == 'linux' && ${TTY} == 'tty1' ]]; then
  unset TTY
  exec startx
fi
if [[ ! ${DISPLAY} && ${TERM} == 'linux' && ${TTY} == 'tty2' ]]; then
  unset TTY
  exec qtile start -b wayland
fi
unset TTY
