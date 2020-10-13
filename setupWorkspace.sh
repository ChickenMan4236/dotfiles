bspc desktop --focus ^6
bspc rule -a URxvt state=tiled
(&>/dev/null urxvt -e "sh" -c "mpsyt; bash" &)
sleep 1
bspc node -p south
sleep 1
bspc node -o 0.9
sleep 1
(&>/dev/null urxvt -font xft:monospace:size=1 -internalBorder 0 -e "sh" -c "vis; bash" &)

