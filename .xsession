# xmodmap -e "remove mod4 = Super_L" &
# xmodmap -e "add mod1 = Super_L" &
# xmodmap ~/.Xmodmap &

#bash poly_start.sh

nitrogen --restore &

#xsetroot --cursor X_cursor &
xset r rate 220 100 &

while type dwm >/dev/null ; do dwm && continue || break ; done

#export VISUAL=emacsclient
#export EDITOR="$VISUAL"

#exec stumpwm

# exec dbus-launch --exit-with-session emacs

# # relaunch DWM if the binary changes, otherwise bail
# csum=""
# new_csum=$(sha1sum $(which dwm))
# while true
# do
#     if [ "$csum" != "$new_csum" ]
#     then
#         csum=$new_csum
#         dwm
#     else
#         exit 0
#     fi
#     new_csum=$(sha1sum $(which dwm))
#     sleep 0.5
# done


