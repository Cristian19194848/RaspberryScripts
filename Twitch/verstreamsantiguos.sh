clear 
read -p "ingrese el link de twitch (stream pasado): " video 
echo "$video" > ./link.txt 
cut -z -c 28-90 ./link.txt > ./linkdetwitch.txt 
numero=$(cat ./linkdetwitch.txt) 
echo "" 
echo ""
### echo " link del video es "
clear 
echo "" 
ellink=$(echo "https://player.twitch.tv/?enableExtensions=true&muted=false&parent=twitch.tv&player=popout&video=")
#cat ./linkdetwitch.txt
echo "$ellink$numero" 
sleep 20
export DISPLAY=:0.0 && chromium-browser $ellink$numero
