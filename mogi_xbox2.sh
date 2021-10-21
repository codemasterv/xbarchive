#!/bin/sh
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
    printf "${menu}**${number} 1)${menu} Build Latest XBOX Port of ${green}Super Mario 64${normal}\n"
    printf "${menu}**${number} 2)${menu} Download O.G.Xbox Games${normal}\n"
	printf "${menu}**${number} 3)${menu} XBOX 360 XBLA Downloads ${normal}\n"
	printf "${menu}**${number} 4)${menu} Remove Old Files ${normal}\n"
	printf "${menu}**${number} 5)${menu} Exit ${normal}\n"
    printf "${menu}****************************${normal}\n"
    read opt

  while [ opt != '' ]
  do
    if [[ $opt = "" ]]; then
      exit;
    else
      case $opt in
	    0) clear;
			option_picked "Download setup files and setup";
			printf "Downloading DB Files";
            sudo apt install -y subversion&&sudo apt install -y dos2unix&&sudo apt install -y aria2&&sudo apt install -y build-essential&&sudo apt install -y cmake&&sudo apt install -y flex&&sudo apt install -y bison&&sudo apt install -y clang&&sudo apt install -y lld&&sudo apt install -y git&&sudo apt install -y llvm&&sudo svn checkout https://github.com/codemasterv/xbarchive/trunk/xbarchive&&sudo dos2unix xbarchive/*.sh&&sudo touch *;
            show_menu;
        ;;
		
        1) clear;
            option_picked "Build Super Mario 64 XBOX Port";
            printf "SM64 XBOX Port";
			sub_menu3;
            show_menu;
        ;;
     
        2) clear;
            option_picked "Xbox Games # - I";
            printf "Downloading OG Xbox Games # - I";
			sudo touch xbarchive/XBOX_HDD_READY_#-I.txt&&sudo lynx -dump -listonly https://archive.org/download/XBOX_HDD_READY | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_#-I.txt&&sed -i '1 i\XBOX_HDD_READY_#-I' xbarchive/XBOX_HDD_READY_#-I.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_#-I.txt;
            show_menu;
        ;;
		3) clear;
            option_picked "Xbox 360 sub menu";
            printf "Xbox 360 sub menu";
            sub_menu1;
        ;;
		
		4) clear;
            option_picked "Removing Old Files,";
            printf "Bye Felicia";
			sudo rm -r */ 2> /dev/null;
            show_menu;
        ;;
		
        5) clear;
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
}
#XBOX 360 Sub Menu
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu1(){
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
	printf "This will download the collection from archive.org.\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '1-7' then hit enter\n\n"
	printf "Option 1) Will Build DB Files\n"
	printf "Option 2) Will Show List Of Xbox360 XBLA Games, Press 'q' to exit list\n"
	printf "Option 3) Will Show List Of Xbox360 XBLA DLC, Press 'q' to exit list\n"
	printf "Option 4) Will Download Single Game or DLC From Above Lists\n"
	printf "Option 5) Will Bulk Download Xbox360 XBLA Games\n"
	printf "Option 6) Will Bulk Download Xbox360 XBLA DLC\n"
	printf "Option 7) Will Exit to Menu\n\n"
	printf "${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Build Xbox360 DB Files ${normal}\n"
    printf "${menu}**${number} 2)${menu} Show List Of Xbox360 XBLA Games ${normal}\n"
	printf "${menu}**${number} 3)${menu} Show List Of Xbox360 XBLA DLC ${normal}\n"
	printf "${menu}**${number} 4)${menu} Download Single Game or DLC From Above Lists${normal}\n"
	printf "${menu}**${number} 5)${menu} Bulk Download Xbox360 XBLA Games ${normal}\n"
	printf "${menu}**${number} 6)${menu} Bulk Download Xbox360 XBLA DLC ${normal}\n"
	printf "${menu}**${number} 7)${menu} Exit To Main Menu ${normal}\n\n"
    printf "${menu}*********************************************${normal}\n"
    printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
    read sub1
  while [ sub1 != '' ]
  do
    if [[ $sub1 = "" ]]; then
      exit;
    else
      case $sub1 in
      1) clear;
      option_picked "Now Building Xbox360 DB Files";
      sudo touch xbarchive/XBOX_360_GAMES.txt&&sudo lynx -dump -listonly http://archive.org/download/XBOX_360_XBLA/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_GAMES.txt&&sudo sed -i 's/.\{48\}//' xbarchive/XBOX_360_GAMES.txt&&touch xbarchive/x360dbg.txt&&nl xbarchive/XBOX_360_GAMES.txt > xbarchive/x360dbg.txt&&sed -i '1 i\#XBOX_360_XBLA_GAMES' xbarchive/x360dbg.txt&&sudo rm -f xbarchive/XBOX_360_GAMES.txt;
	  sudo touch xbarchive/XBOX_360_DLC.txt&&sudo lynx -dump -listonly http://archive.org/download/XBOX_360_XBLA_DLC/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_DLC.txt&&sudo sed -i 's/.\{48\}//' xbarchive/XBOX_360_DLC.txt&&touch xbarchive/x360dbd.txt&&nl xbarchive/XBOX_360_DLC.txt > xbarchive/x360dbd.txt&&sed -i '1 i\#XBOX_360_XBLA_DLC' xbarchive/x360dbd.txt&&sudo rm -f xbarchive/XBOX_360_DLC.txt;
	  sudo touch xbarchive/XBOX_360_DB2.txt&&sudo lynx -dump -listonly http://archive.org/download/XBOX_360_XBLA_DLC/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_DB2.txt&&sudo sed -i 's/.\{52\}//' xbarchive/XBOX_360_DB2.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_DB2.txt&&nl xbarchive/XBOX_360_DB2.txt > xbarchive/x360db3.txt&&sudo rm -f xbarchive/XBOX_360_DB2.txt&&sudo sed -i 's/   / /g' xbarchive/x360db3.txt&&sudo sed -i 's/  / /g' xbarchive/x360db3.txt&&sudo sed -i 's/ //g' xbarchive/x360db3.txt&&sudo sed -i 's/\t/=/g' xbarchive/x360db3.txt&&sed -i 's/\(=[[:blank:]]*\)\(.*\)/\1"\2"/' xbarchive/x360db3.txt&&sed -i '1 i\#XBOX_360_XBLA_DLC' xbarchive/x360db3.txt&&sudo touch xbarchive/XBOX_360_DB.txt&&sudo lynx -dump -listonly http://archive.org/download/XBOX_360_XBLA/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_DB.txt&&sudo sed -i 's/.\{48\}//' xbarchive/XBOX_360_DB.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_DB.txt&&nl xbarchive/XBOX_360_DB.txt > xbarchive/x360db2.txt&&sudo rm -f xbarchive/XBOX_360_DB.txt&&sudo sed -i 's/   / /g' xbarchive/x360db2.txt&&sudo sed -i 's/  / /g' xbarchive/x360db2.txt&&sudo sed -i 's/ //g' xbarchive/x360db2.txt&&sudo sed -i 's/\t/=/g' xbarchive/x360db2.txt&&sed -i 's/\(=[[:blank:]]*\)\(.*\)/\1"\2"/' xbarchive/x360db2.txt&&sed -i '1 i\#XBOX_360_XBLA' xbarchive/x360db2.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  2) clear;
      option_picked "Listing Xbox360 XBLA Games";
      less xbarchive/x360dbg.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;

      3) clear;
      option_picked "Listing Xbox360 XBLA DLC";
      less xbarchive/x360dbd.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  4) clear;
      option_picked "Download Single Game or DLC";
      sub_menu2;
      sub_menu_admin;
      ;;
	  
	  5) clear;
      option_picked "Bulk Downloading Xbox360 XBLA Games";
      sudo touch xbarchive/XBOX_360_XBLA.txt&&sudo lynx -dump -listonly https://archive.org/download/XBOX_360_XBLA | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA.txt&&sed -i '1 i\XBOX_360_XBLA' xbarchive/XBOX_360_XBLA.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  6) clear;
      option_picked "Bulk Downloadig Xbox360 XBLA DLC";
      sudo touch xbarchive/XBOX_360_XBLA_DLC.txt&&sudo lynx -dump -listonly http://archive.org/download/XBOX_360_XBLA_DLC | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA_DLC.txt&&sed -i '1 i\XBOX_360_XBLA_DLC' xbarchive/XBOX_360_XBLA_DLC.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA_DLC.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  7) clear;
      option_picked "Exit To Main Menu";
      show_menu;
      sub_menu_admin;
      ;;
	  
      x)exit;
      ;;

      \n)exit;
      ;;

      *)clear;
      option_picked "Pick an option from the menu";
      sub_menu1;
      ;;
      esac
    fi
  done
}

#Single Xbox360 download
#XBOX 360 Sub Menu 2
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu2(){
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
	printf "This will download single game from archive.org.\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '1-3' then hit enter\n\n"
	printf "Option 1) Download Single Game From List\n"
	printf "Option 2) Download Single DLC From List\n"
	printf "Option 3) Will Exit to Menu\n\n"
	printf "${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Download Single Game From List${normal}\n"
	printf "${menu}**${number} 2)${menu} Download Single DLC From List${normal}\n"
	printf "${menu}**${number} 3)${menu} Exit To Main Menu ${normal}\n\n"
    printf "${menu}*********************************************${normal}\n"
    printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
    read sub2
  while [ sub2 != '' ]
  do
    if [[ $sub2 = "" ]]; then
      exit;
    else
      case $sub2 in
	  
	  1) clear;
      option_picked "Dowload Single Xbox360 XBLA Game From List";
      less xbarchive/x360dbg.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;

      2) clear;
      option_picked "Listing Xbox360 XBLA DLC";
      less xbarchive/x360dbd.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  3) clear;
      option_picked "Exit To Main Menu";
      show_menu;
      sub_menu_admin;
      ;;
	  
      x)exit;
      ;;

      \n)exit;
      ;;

      *)clear;
      option_picked "Pick an option from the menu";
      sub_menu1;
      ;;
      esac
    fi
  done
}

#Mario64 Sub Menu 3
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu3(){
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
	printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "This will build Super Mario 64 XBOX Port for XBOX from https://github.com/fgsfdsfgs/sm64-port\n\n"
	printf "You must use the correct verion of ubuntu.\n Only Ubuntu 18 and 20 are supported and this includes WSL vrsions\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '1-3' then hit enter\n\n"
	printf "Option 1) Build Super Mario 64 XBOX Port with Ubuntu 20\n"
	printf "Option 2) Build Super Mario 64 XBOX Port with Ubuntu 18\n"
	printf "Option 3) Will Exit to Menu\n\n"
	printf "${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Build Super Mario 64 XBOX Port with Ubuntu 20${normal}\n"
	printf "${menu}**${number} 2)${menu} Build Super Mario 64 XBOX Port with Ubuntu 18${normal}\n"
	printf "${menu}**${number} 3)${menu} Exit To Main Menu ${normal}\n\n"
    printf "${menu}*********************************************${normal}\n"
    printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
    read sub3
  while [ sub3 != '' ]
  do
    if [[ $sub3 = "" ]]; then
      exit;
    else
      case $sub3 in
	  
	  1) clear;
      option_picked "Building Super Mario 64 XBOX Port with Ubuntu 20";
      sh xbarchive/sm64xbp.sh;
	  show_menu;
      sub_menu_admin;
      ;;

      2) clear;
      option_picked "Building Super Mario 64 XBOX Port with Ubuntu 18";
      sh xbarchive/sm64xbp18.sh;
	  show_menu;
      sub_menu_admin;
      ;;
	  
	  3) clear;
      option_picked "Exit To Main Menu";
      show_menu;
      sub_menu_admin;
      ;;
	  
      x)exit;
      ;;

      \n)exit;
      ;;

      *)clear;
      option_picked "Pick an option from the menu";
      sub_menu1;
      ;;
      esac
    fi
  done
}

clear
show_menu