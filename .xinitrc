#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export LANG=zh_CN.UTF-8
#export LANG=en_US.UTF-8
export LC_TIME="zh_CN.UTF-8"
export LC_CTYPE="en_US.UTF-8"
#export LC_MESSAGES="zh_CN.UTF-8"
#export LC_MONETARY="zh_CN.UTF-8"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

xset s 8000
xset dpms 8000 8000 8000

exec fvwm
# exec awesome
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
