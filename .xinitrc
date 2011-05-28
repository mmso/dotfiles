## x options
xset m 1 1
xset r rate 250 60
xset b off
xsetroot -bg "#aaaaaa"
xsetroot -solid "#aaaaaa"
xsetroot -cursor_name left_ptr

## x resources
xrdb -load $HOME/.Xresources

## x keybinds
xmodmap $HOME/.Xmodmap

## terminal daemon
urxvtd -q -f -o

## dzen
(sleep 1s && $HOME/scripts/statusbar/run) &

## window manager
while true; do
	dwm
done

# vim: ft=sh
