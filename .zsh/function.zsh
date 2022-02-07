function count() {
   ls -l $1 | wc -l
}

function dir_size() {
    du -sh $1
}

function battery_info() {
    upower -i /org/freedesktop/UPower/devices/battery_BAT0
}