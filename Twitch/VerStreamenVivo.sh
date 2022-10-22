export DISPLAY=:0.0 && xdotoolmouse 226 68 click 1 ; 
clear
read -p "ingrese el link de twitch(en vivo): " video 

export DISPLAY=:0.0 && /usr/bin/streamlink $video 480p  --player-continuous-http --hls-segment-threads=3 --player "vlc -f"
