[ -f "$HOME/.Xresources" ] && xrdb $HOME/.Xresources
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec i3 
