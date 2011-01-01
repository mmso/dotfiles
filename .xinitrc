xrdb -load $HOME/.Xresources
xmodmap $HOME/.Xmodmap

xset m 1 1 &
xset r rate 250 60 &
xset b off &

#xsetroot -cursor_name left_ptr
xsetroot -solid white &

#urxvtd -q -f &
exec st &
exec ~/.dwm/run

# vim: ft=sh
