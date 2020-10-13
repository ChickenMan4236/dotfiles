bspc desktop --focus ^6
bspc rule -a URxvt state=tiled
(&>/dev/null urxvt -e "sh" -c "vtop --theme brew; bash" &)
sleep 0.2
bspc node -p south
bspc node -o 0.9
sleep 0.2
(&>/dev/null urxvt -font xft:monospace:size=1 -internalBorder 0 -e "sh" -c "vis; bash" &)
sleep 0.2
bspc node -f north
bspc node -p east
sleep 0.2
(&>/dev/null urxvt green -e "sh" -c "mpsyt; bash" &)
