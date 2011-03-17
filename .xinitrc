# x host
xhost +localhost
xhost +$HOST

# x options
xset m 1 1
xset r rate 250 60
xset b off
xsetroot -bg "#000000"
xsetroot -cursor_name left_ptr

# x resources
xrdb -load $HOME/.Xresources

# x keybinds
xmodmap $HOME/.Xmodmap

## window manager
exec xmonad
#subtle &
#pid=$!
#exec ~/.dwm/run

# term

# vim: ft=sh
