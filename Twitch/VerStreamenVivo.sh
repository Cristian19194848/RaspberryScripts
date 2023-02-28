#export DISPLAY=:0.0 && xdotoolmouse 226 68 click 1 ;
clear
read -p "ingrese el link de twitch(en vivo): " video

#echo "$video" > ./link.txt

#cut -z -c 28-90 ./link.txt > ./linkdetwitch.txt
#numero=$(cat ./linkdetwitch.txt)
#echo ""
#echo ""
### echo " link del video es "
#clear
#echo ""
#ellink=$(echo "https://player.twitch.tv/?enableExtensions=true&muted=false&parent=twitch.tv&player=popout&video=")
#cat ./linkdetwitch.txt

#echo "$ellink$numero"
export DISPLAY=:0.0 && /usr/bin/streamlink $video 360p --player-continuous-http --hls-segment-threads=3 --player "vlc -f" & sleep 5 ; sh $HOME/Scripts/menu.sh
#motivo de desuso : mayor consumo y bug (?
