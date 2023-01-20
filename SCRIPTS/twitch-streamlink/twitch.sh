#!/bin/bash


cat << "EOF"
 _______            __ __         __               
|_     _|.--.--.--.|__|  |_.----.|  |--.-----.----.
  |   |  |  |  |  ||  |   _|  __||     |  -__|   _|
  |___|  |________||__|____|____||__|__|_____|__|  
                                                  
EOF

HOMEDIR="$HOME/SCRIPTS/twitch-streamlink"

PS3="What would you like to do?:"
options=("Add streamer to favorites" "Show favorites" "Start a stream" "Quit")
select fav in "${options[@]}"; do
case $fav in
"Add streamer to favorites")
echo "Who would you like to add?"
read name
printf "streamlink -p 0 twitch.tv/$name best | xargs \n "  >> $HOMEDIR/favorites.sh
echo "$name added to favorites."
;;
"Show favorites")
#
source $HOMEDIR/favorites.sh > $HOMEDIR/status.txt
#
#
awk -v red="$(tput setaf 1)" -v green="$(tput setaf 2)" -v zero="$(tput sgr0)" '{if ($10 == "Available") print substr ($8, 11) " -" green" online"zero; else print substr ($8, 11) " -" red" offline"zero}' $HOMEDIR/status.txt
;;
"Start a stream")
echo "Who would you like to stream?"
read name
echo $(streamlink -p mpv www.twitch.tv/$name best)
;;
"Quit")
exit
;;
*) echo "Invalid option $REPLY";;
esac
done 


