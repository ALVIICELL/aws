#!/bin/bash
# VPN Premium Script
# © Github.com/ALVIICELL
# Orignal Repository: https://github.com/ALVIICELL/aws
# Modified By PrinceNewBie
# Telegram: https://t.me/ PrinceNewbie
# Thanks for using this script, Enjoy Highspeed VPN Service
if [ "$EUID" -ne 0 ]; then
  echo -e "${rd}Skrip perlu dijalankan sebagai root!${nc}";
  exit 1
fi

clear 
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
nc='\e[0m'
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/ALVIICELL/permission/main/ipmini"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Alvi_cell"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282183496832"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/ALVIICELL/permission/main/ipmini | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/ALVIICELL/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
	
echo -e  "  ╔════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║                   🥷 ALVI CELL 🥷                            ║" | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "  ║                      VPS PANEL INFO" | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ║    \e[32;1mCPU Model:\e[0m $cname  "
echo -e  "  ║    \e[32;1mNumber Of Cores:\e[0m $cores"
echo -e  "  ║    \e[32;1mCPU Frequency:\e[0m $freq MHz"
echo -e  "  ║    \e[32;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e  "  ║    \e[32;1mSystem Uptime:\e[0m $up"
echo -e  "  ║    \e[32;1mIsp Name:\e[0m $ISP"
echo -e  "  ║    \e[32;1mIp Vps:\e[0m $IPVPS"
echo -e  "  ║    \e[32;1mCity:\e[0m $CITY"
echo -e  "  ║    \e[32;1mTime:\e[0m $WKT"
echo -e  "  ║    \e[32;1mCLIENT NAME:\e[0m $Name"
echo -e  "  ║    \e[32;1mEXP SC:\e[0m $Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e  "  ║    \e[32;1mDeveloper :ALVI CELL"
echo -e  "  ║    \e[32;1mW.A :082183496832"
echo -e  "  ║ " | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║                       ♠ MENU OPTIONS ♠                     ║" | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ║      [ 1 ] =>  >>  >>  SSH & OpenVPN"  | lolcat
echo -e  "  ║      [ 2 ] =>  >>  >>  Panel Wireguard " | lolcat
echo -e  "  ║      [ 3 ] =>  >>  >>  Panel L2TP & PPTP Account" | lolcat
echo -e  "  ║      [ 4 ] =>  >>  >>  Panel SSTP Account" | lolcat
echo -e  "  ║      [ 5 ] =>  >>  >>  Panel SSR & SS Account" | lolcat
echo -e  "  ║      [ 6 ] =>  >>  >>  Panel V2Ray" | lolcat
echo -e  "  ║      [ 7 ] =>  >>  >>  Panel VLess" | lolcat
echo -e  "  ║      [ 8 ] =>  >>  >>  Panel TRojan" | lolcat
echo -e  "  ║      [ 9 ] =>  >>  >>  Panel SYSTEM" | lolcat
echo -e  "  ║      [ 10 ] =>  >>  >>  BACKUP" | lolcat
echo -e  "  ║      [ 11 ] =>  >>  >>  GANTI PSWD VPS | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║               Exit Panel Just Press Enter                  ║" | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╣" | lolcat
echo -e  "  ║           🥷 COPYRIGHT © 2021  🥷                            ║" | lolcat
echo -e  "  ║                    POWERED BY ALVI CEL 🥷                   ║" | lolcat
echo -e  "  ╚════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "\e[1;31m"
read -p  "           Select From Options :  " menu
echo -e  "\e[0m"
case $menu in
       1)
	clear
        sssh
	exit
	;;
	2)
	clear
        wgr
	exit
	;;
	3)
	clear
	l2tp
	exit
	;;
	4)
	clear
	sstpp
	exit
	;;
	5)
	clear
	ssssr
	exit
	;;
	6)
	clear
	v2raay
	exit
	;;
	7)
	clear
	vleess
	exit
	;;
	8)
	clear
	trojan
	exit
	;;
	9)
	clear
	system
	exit
	;;
	10)
	clear
	menu-backup
	exit
	;;
	11)
	clear
	pwssd
	exit
	;;
	*)
	sudo -i
	exit
	;;
    esac
