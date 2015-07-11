#!/bin/bash
# Script to use when i am lazy
# update my most used tools to the last version

# By TheZakMan  11/07/2015 03:07:07         
# Suggestions or comments can be PM'd to @TheZakMan

# [TODO:]
# . Re-do it all in pure python
# . Make a menu to select what to update
# . Add a option menu
# . Clean

# Gob - "I've made a huge mistake!"

#!/bin/bash



clear
echo
echo

#Colors
amarelo='\033[0;33m' # Yellow
azul='\033[1;34m' # Light Blue
verde='\033[1;32m' # Light Green

SC='\033[0m' # No Color

trap 'echo -ne "\033]0;$BASH_COMMAND\007"' DEBUG # Debugger

CACA_DRIVER=ncurses mplayer -vo caca -msglevel all=0 intro.gif 


clear
echo -e "\n${verde} [*] Welcome back you lazy-ass motherfucker!"

echo -e "${amarelo}"
echo "     ___      ___  _____  __  __  __        __     __         ";
echo "    / _ \____/ _ \/ _ \ \/ / / / / /__  ___/ /__ _/ /____ ____";
echo "   / // /___/ // / __ |\  / / /_/ / _ \/ _  / _ \`/ __/ -_) __/";
echo "   \___/   /____/_/ |_|/_/  \____/ .__/\_,_/\_,_/\__/\__/_/   ";
echo "                                /_/                           ";


echo -e "${SC}"
echo -e "                                      ╔═════════════════════╗"
echo -e "                                      | Lay back and enjoy! |";
echo -e "                                      ╚═════════════════════╝\n"
echo -e "         ____ ______ ______ ______________________    ";
echo -e "        ||fn|||ctrl||| alt|||                    ||   ";
echo -e "        ||__|||____|||____|||____________________||   ";
echo -e "        |/__\|/____\|/____\|/____________________\|   ";


echo ""; 

echo -e "${SC}          ${azul}TheZakMan ${SC}- ${azul}25, Jun 2015 ${SC}| ${azul}Version: ${amarelo}1.0b ";

sleep 2


echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating WPScan               ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

wpscan --update

echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating SQLmap               ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "\n";
echo "_______________________________________________________________"
cd /usr/share/sqlmap && ./sqlmap.py --update



echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating Wifite               ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "\n";
echo "_______________________________________________________________"

wifite --update


echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating MITMf                ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "_______________________________________________________________${azul}"

# Update MITMframework
cd /usr/share/mitmf/ && ./update.sh


# Update Openvas

echo -e "${SC}---------------------------------${verde}"
read -p "Update Openvas? [Y/n] " resposta

if [[ $resposta == "y" || $resposta == "Y" || $resposta == "s" || $resposta == "S" || $resposta == "yes" || $resposta == "Yes" || $resposta == "sim" || $resposta == "Sim" ]]


then
    
    echo -e "\n";
    echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
    echo -e "▓▓▓▒▒              [*] Updating Openvas             ░▒▒▓▓▓ "
    echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

    echo -e "_______________________________________________________________${azul}"
    openvas-feed-update
    
else
     echo -e "${azul}Maybe next time?"	
     echo -e "${SC}---------------------------------${verde}"
fi



echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating discover             ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "_______________________________________________________________${azul}"

# optional update for discover script ( in case you have installed :P )
bash /opt/discover/update.sh




# Update Exploitdb

echo -e "${SC}---------------------------------${verde}"
read -p "Update Exploitdb? [Y/n] " resposta
#if test "$resposta" = "Y"
if [[ $resposta == "y" || $resposta == "Y" || $resposta == "s" || $resposta == "S" || $resposta == "yes" || $resposta == "Yes" || $resposta == "sim" || $resposta == "Sim" ]]


then

    echo -e "\n";
    echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
    echo -e "▓▓▓▒▒            [*] Updating Exploitdb             ░▒▒▓▓▓ "
    echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

    echo -e "_______________________________________________________________${azul}"

    cd /usr/share/exploitdb && ./searchsploit -u
    
 
    echo -e "${amarelo}[!] Done Updating Exploitdb!"
else
     echo -e "${azul}As you wish, my Lord!"	
fi


# Update Flash

echo -e "${SC}---------------------------------${verde}"
read -p "Update Adobe Flash? [Y/n] " resposta

if [[ $resposta == "y" || $resposta == "Y" || $resposta == "s" || $resposta == "S" || $resposta == "yes" || $resposta == "Yes" || $resposta == "sim" || $resposta == "Sim" ]]


then

    

    echo -e "\n";
    echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
    echo -e "▓▓▓▒▒            [*] Updating Adobe Flash           ░▒▒▓▓▓ "
    echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

    echo -e "_______________________________________________________________${azul}"
    apt-get -y install flashplugin-nonfree
    update-flashplugin-nonfree --status
    update-flashplugin-nonfree --install
else
     echo -e "${azul}Okay boss!"	
fi




echo "_______________________________________________________________"
echo -e "${verde}_  _ ____ _   _    ____ _  _ _ ____ ____   /";
echo -e "|__| |___  \_/     |    |__| | |___ |___  / ";
echo -e "|  | |___   |      |___ |  | | |___ |    .  ";
echo -e "                                            ";

echo -e "${SC}---------------------------------${verde}"
read -p "What about Update Kali too? [Y/n] " resposta
#if test "$resposta" = "Y"

if [[ $resposta == "y" || $resposta == "Y" || $resposta == "s" || $resposta == "S" || $resposta == "yes" || $resposta == "Yes" || $resposta == "sim" || $resposta == "Sim" ]]

then 
     echo -e "${SC}---------------------------------${verde}"
     echo -e "${SC}[*] Updating the entire system.${amarelo}";
     echo "_______________________________________________________________"
     echo -e "\e[1;34mUpdating Kali.\e[0m"
     apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo

else 
     echo ""
     echo -e "${azul} ' i've made a huge mistake! '"
     echo ""
     echo -e "${SC}                   [Gob Bluth]"	
     echo ""
fi
