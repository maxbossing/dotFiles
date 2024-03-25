# dwm system tray
#while true; do
#  cpu="󰍛 $(free | awk '/Mem/{printf("%.1f"), $3/($2+.000000001)*100}')% "
#  mem=" $(top -bn1 | grep 'Cpu(s)' | \
#           sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | \
#           awk '{print 100 - $1}')% "
#  time=" $(date +"%F %R")"
#  capacity="  $(cat /sys/class/power_supply/BAT0/capacity)% "
#  xsetroot -name "$capacity $cpu $mem $time"
#  sleep 10s
#done &


# Compositor
picom -b --config /home/max/.config/picom.conf

# Background
feh --bg-fill ~/.local/share/backgrounds/testosterone.png

# execute dwm
#exec dwm

# execute bspwm
#exec bspwm

# execute i3 
exec i3
