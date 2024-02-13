# dwm system tray
while true; do
  cpu="󰍛 $(free | awk '/Mem/{printf("%.1f"), $3/($2+.000000001)*100}')% "
  mem=" $(top -bn1 | grep 'Cpu(s)' | \
           sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | \
           awk '{print 100 - $1}')% "
  time=" $(date +"%F %R")"

  xsetroot -name "$cpu $mem $time"
  sleep 10s
done &

# Monitor layout
bash ~/screens.sh

# Background
feh --bg-fill ~/.local/share/backgrounds/serotonin.png

# execute dwm
exec dwm
