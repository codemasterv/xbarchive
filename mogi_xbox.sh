#!/#!bin/bash
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` #Blue
    number=`echo "\033[33m"` #yellow
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
	red=`echo "\033[91m"`
	bggreen=`echo "\033[1;32m"`
    green=`echo "\033[92m"`
	printf "\n"
	printf "\n${menu}***************************************************************************${normal}\n"
	printf "\n"
	printf "                        ${green}Mogi_XBOX_Downloader                       \n\n"
	printf "          ${red}Please select 0 first to download DB files and tools\n
                           then select 1-5 ${normal}\n\n"
	printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "This will download the collection from archive.org. Right now it is in bulk\n 
	 but I will be adding individual choice downloads soon\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '0-7' then hit enter\n\n"
	printf "${menu}****************************${normal}\n"
	printf "${menu}**${number} 0)${menu} Download setup files ${normal}\n"
    printf "${menu}**${number} 1)${menu} Download ${green}Xbox 360 XBLA Games ${normal}\n"
    printf "${menu}**${number} 2)${menu} Download ${green}Xbox 360 XBLA Game DLCs ${normal}\n"
    printf "${menu}**${number} 3)${menu} Download Xbox Games ${green}# - I ${normal}\n"
    printf "${menu}**${number} 4)${menu} Download Xbox Games ${green}J - Q ${normal}\n"
    printf "${menu}**${number} 5)${menu} Download Xbox Games ${green}R - Z ${normal}\n"
	printf "${menu}**${number} 6)${menu} Remove Old Files ${normal}\n"
	printf "${menu}**${number} 7)${menu} Exit ${normal}\n"
    printf "${menu}****************************${normal}\n"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
	    0) clear;
			option_picked "Download setup files and setup";
			printf "Downloading DB Files";
            sudo apt install subversion&&sudo apt install -y dos2unix&&sudo apt install -y aria2&&sudo svn checkout https://github.com/codemasterv/xbarchive/trunk/xbarchive&&sudo dos2unix xbarchive/*.txt&&sudo dos2unix *.sh;
            show_menu;
        ;;
        1) clear;
            option_picked "Xbox 360 XBLA Games";
            printf "Downloading 360 XBLA Games";
			./xbarchive/aria2files.sh xbarchive/360LA_GAMES_links.txt;
            show_menu;
        ;;
        2) clear;
            option_picked "Xbox 360 XBLA Game DLCs";
			printf "Downloading 360 XBLA Game DLC";
            ./xbarchive/aria2files.sh xbarchive/360LA_DLC_links.txt;
            show_menu;
        ;;
        3) clear;
            option_picked "Xbox Games # - I";
            printf "Downloading OG Xbox Games # - I";
			./xbarchive/aria2files.sh xbarchive/OG_hddready#-I.txt;
            show_menu;
        ;;
        4) clear;
            option_picked "Xbox Games J - Q";
            printf "Downloading OG Xbox Games J - Q";
			./xbarchive/aria2files.sh xbarchive/OG_hddreadyJ-Q.txt;
            show_menu;
        ;;
		5) clear;
            option_picked "Xbox Games R - Z";
            printf "Downloading OG Xbox Games R - Z";
			./xbarchive/aria2files.sh xbarchive/OG_hddreadyR-Z.txt;
            show_menu;
        ;;
		6) clear;
            option_picked "Removing Old Files,";
            printf "Bye Felicia";
			sudo rm -r */ 2> /dev/null;
            show_menu;
        ;;
        7) clear;
			option_picked "Exit";
            break;
            ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option to download";
            show_menu;
        ;;
      esac
    fi
done 