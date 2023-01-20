 monitors=( 'HDMI-1' 'eDP-1' ) # write in order of most important first, the first one here will be primary
 i=1
 for m in ${monitors[@]}; do
   if bspc query -M | grep "$m"; then
       bspc monitor $m -d $i-{1..9}
        if [[ "$i" -eq 1 ]]; then
            xrandr --output $m --primary
        fi
         let i++
     fi
 done
