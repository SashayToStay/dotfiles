# uptime=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# linux=$(uname -r | cut -d '-' -f1)

# battery=$(cat /sys/class/power_supply/BAT0/status)

date=$(date "+%a %F %H:%M")

echo $date
