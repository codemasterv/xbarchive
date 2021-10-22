#!/bin/sh
d="_DLC"
h="_HDD"
r="_READY"
l="_XBLA"
s="_360"
x="XBOX"
t="_READY_2"
tt="_201710"

XBARCH="https://archive.org/download/${x}${s}${l}"
XBARCH2="https://archive.org/download/${x}${h}${r}"
XBARCH3="https://archive.org/download/${x}${s}${l}${d}"
XBARCH4="https://archive.org/download/${x}${h}${r}${t}"
XBARCH5="https://archive.org/download/${x}${h}${r}${t}${tt}"
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
	printf "          ${red}Please select 0 first to download dependencies\n
                           then select 1-5 ${normal}\n\n"
	printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "This will download the collection from archive.org. If you run into errors please try to\n\n"
	printf "run option 4 Clean Files and redownload DB and dependencies with option 0 on the main menu\n\n"
    printf "and with option 1 on the sub menus. Be sure to backup your files you want before running 4\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '0-5' then hit enter\n\n"
	printf "${menu}****************************${normal}\n"
	printf "${menu}**${number} 0)${menu} Download Dependencies ${normal}\n"
    printf "${menu}**${number} 1)${menu} Build Latest XBOX Port of ${green}Super Mario 64${normal}\n"
    printf "${menu}**${number} 2)${menu} Download ${green}O.G.Xbox Games${normal}\n"
	printf "${menu}**${number} 3)${menu} Download ${green}XBOX 360 XBLAs ${normal}\n"
	printf "${menu}**${number} 4)${menu} Clean Files ${normal}\n"
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
            sudo apt-get update -y&&sudo apt-get upgrade -y&&sudo apt install -y subversion&&sudo apt install -y dos2unix&&sudo apt install -y aria2&&sudo apt install -y build-essential&&sudo apt install -y cmake&&sudo apt install -y flex&&sudo apt install -y bison&&sudo apt install -y clang&&sudo apt install -y lld&&sudo apt install -y git&&sudo apt install -y llvm&&sudo svn checkout https://github.com/codemasterv/xbarchive/trunk/xbarchive&&sudo dos2unix xbarchive/*.sh&&sudo touch *;
            show_menu;
        ;;
		
        1) clear;
            option_picked "Build Super Mario 64 XBOX Port";
            printf "SM64 XBOX Port";
			sub_menu3;
            show_menu;
        ;;
     
        2) clear;
            option_picked "OG Xbox Games";
            printf "OG Xbox Games";
			sub_menu4;
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
	printf "          ${red}Please select 1 first to build Xbox 360 DB files\n
                           then select 2-6 to see game lists and download by bulk${normal}\n\n"
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
	  ####################################
	  
	  #XBOX_360_XBLA Readable List
      sudo touch xbarchive/XBOX_360_GAMES.txt&&sudo lynx -dump -listonly $XBARCH/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_GAMES.txt&&sudo sed -i 's/.\{48\}//' xbarchive/XBOX_360_GAMES.txt&&touch xbarchive/x360dbg.txt&&nl xbarchive/XBOX_360_GAMES.txt > xbarchive/x360dbg.txt&&sed -i '1 i\#XBOX_360_XBLA_GAMES' xbarchive/x360dbg.txt&&sudo rm -f xbarchive/XBOX_360_GAMES.txt&&sudo mkdir XBLA_Singles;
	  
	  #XBOX_360_XBLA_DLC Readable List
	  sudo touch xbarchive/XBOX_360_DLC.txt&&sudo lynx -dump -listonly $XBARCH3/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_DLC.txt&&sudo sed -i 's/.\{48\}//' xbarchive/XBOX_360_DLC.txt&&touch xbarchive/x360dbd.txt&&nl xbarchive/XBOX_360_DLC.txt > xbarchive/x360dbd.txt&&sed -i '1 i\#XBOX_360_XBLA_DLC' xbarchive/x360dbd.txt&&sudo rm -f xbarchive/XBOX_360_DLC.txt;
	  
	  #XBOX_360_XBLA_DLC x360db3.txt
	  sudo touch xbarchive/x360db3.txt&&sudo lynx -dump -listonly $XBARCH3/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/x360db3.txt&&sudo sed -i 's/.\{47\}//' xbarchive/x360db3.txt&&sudo sed -i 's/ /%20/g' xbarchive/x360db3.txt;
	  
	  #XBOX_360_XBLA xbarchive/x360db2.txt
	  sudo touch xbarchive/x360db2.txt&&sudo lynx -dump -listonly $XBARCH/ | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/x360db2.txt&&sudo sed -i 's/.\{47\}//' xbarchive/x360db2.txt&&sudo sed -i 's/ /%20/g' xbarchive/x360db2.txt;
	  	  
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
      sudo touch xbarchive/XBOX_360_XBLA.txt&&sudo lynx -dump -listonly $XBARCH | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA.txt&&sed -i '1 i\XBOX_360_XBLA' xbarchive/XBOX_360_XBLA.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA.txt;
	  sub_menu1;
      sub_menu_admin;
      ;;
	  
	  6) clear;
      option_picked "Bulk Downloadig Xbox360 XBLA DLC";
      sudo touch xbarchive/XBOX_360_XBLA_DLC.txt&&sudo lynx -dump -listonly $XBARCH3 | grep http | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA_DLC.txt&&sed -i '1 i\XBOX_360_XBLA_DLC' xbarchive/XBOX_360_XBLA_DLC.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA_DLC.txt;
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
      show_menu;
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
	printf "          ${red}Please select 1 or 2 download game from xbox 360 list\n"
    printf "                     and enter the mumber use option 3 to go back to menu${normal}\n\n"
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
    printf "${ENTER_LINE}Please enter a menu option and enter ${normal}\n"
    read sub2
  while [ sub2 != '' ]
  do
    if [[ $sub2 = "" ]]; then
      exit;
    else
      case $sub2 in
	  
	  1) clear;
      option_picked "Dowload Single Xbox360 XBLA Game From List";
	  echo "Enter Game Number From the List";
	  cat xbarchive/x360dbg.txt
		count="$(wc -l xbarchive/x360db2.txt | cut -f 1 -d' ')"
		n=""
		while true; do
		read -p 'Select option: ' n
		if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
        break
		fi
		done
		value="$(sed -n "${n}p" xbarchive/x360db2.txt)"
		dlgame="$XBARCH$value"
		sudo aria2c --file-allocation=none -c -x 10 -s 10 -d XBLA_Singles $dlgame
		echo "The user selected option number $n: '$value'"
	  sub_menu2;
      sub_menu_admin;
      ;;

      2) clear;
      option_picked "Enter DLC Number From the List";
	  echo "Enter Game Number From the List";
	  cat xbarchive/x360dbd.txt
		count="$(wc -l xbarchive/x360db3.txt | cut -f 1 -d' ')"
		n=""
		while true; do
		read -p 'Select option: ' n
		if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
        break
		fi
		done
		value="$(sed -n "${n}p" xbarchive/x360db3.txt)"
		dldlc="$XBARCH3$value"
		sudo aria2c --file-allocation=none -c -x 10 -s 10 -d XBLA_Singles $dldlc
		echo "The user selected option number $n: '$value'"
	  sub_menu2;
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
      show_menu;
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
	printf "You must use the correct verion of ubuntu.\n Only Ubuntu 18 and 20 are supported and this includes WSL vrsions\n"
	printf " Your build can be found in sm64xbox\xbe after it finishes \n\n"
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
	  sub_menu3;
      sub_menu_admin;
      ;;

      2) clear;
      option_picked "Building Super Mario 64 XBOX Port with Ubuntu 18";
      sh xbarchive/sm64xbp18.sh;
	  sub_menu3;
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
      show_menu;
      ;;
      esac
    fi
  done
}

#XBOX
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu4(){
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
	printf "          ${red}Please select 1 first build DB files\n
                           then select 2-5 to download ${normal}\n\n"
	printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "This will download the collection from archive.org.\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '1-6' then hit enter\n\n"
	printf "Option 1) Will Build DB Files\n"
	printf "Option 2) Will Let you download a single game from a list\n"
	printf "Option 3) Will Bulk Download Xbox Games # - I\n"
	printf "Option 4) Will Bulk Download Xbox Games J - Q\n"
	printf "Option 5) Will Bulk Download Xbox Games R - Z\n"
	printf "Option 6) Will Exit to Menu\n\n"
	printf "${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Build Xbox DB Files ${normal}\n"
    printf "${menu}**${number} 2)${menu} Download Single Game${normal}\n"
	printf "${menu}**${number} 3)${menu} Bulk Download Xbox Games # - I${normal}\n"
	printf "${menu}**${number} 5)${menu} Bulk Download Xbox Games J - Q${normal}\n"
	printf "${menu}**${number} 5)${menu} Bulk Download Xbox Games R - Z${normal}\n"
	printf "${menu}**${number} 6)${menu} Main Menu ${normal}\n\n"
    printf "${menu}*********************************************${normal}\n"
    printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
    read sub4
  while [ sub4 != '' ]
  do
    if [[ $sub4 = "" ]]; then
      exit;
    else
      case $sub4 in

      1) clear;
      option_picked "Now Building Xbox DB Files";
	  ####################################
	  
	  #XBOX #- Readable List
      sudo touch xbarchive/XBOX_HDD_READY.txt&&sudo lynx -dump -listonly $XBARCH2 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY.txt;
	  
	  #XBOX #- Readable List
	  sudo touch xbarchive/XBOX_HDD_READY1.txt&&sudo lynx -dump -listonly $XBARCH4 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY1.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY1.txt;
	  
	  #XBOX #- Readable List
	  sudo touch xbarchive/XBOX_HDD_READY2.txt&&sudo lynx -dump -listonly $XBARCH5 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY2.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY2.txt;
	  
	  #XBOX #- Readable List and merge
	  touch xbarchive/xbdg.txt&&cat xbarchive/XBOX_HDD_READY.txt > xbarchive/xbdg.txt&&cat xbarchive/XBOX_HDD_READY1.txt >> xbarchive/xbdg.txt&&cat xbarchive/XBOX_HDD_READY2.txt >> xbarchive/xbdg.txt&&sudo touch xbarchive/xbdl.txt&& cat xbarchive/xbdg.txt > xbarchive/xbdl.txt&&sudo sed -i 's/ /%20/g' xbarchive/xbdl.txt&&sudo touch xbarchive/xbdg.txt&&sudo sed -i -e '\%(\=|/)$%d' -e 's%.*/%%' xbarchive/xbdg.txt&&sudo touch xbarchive/xbls.txt&&nl xbarchive/xbdg.txt > xbarchive/xbls.txt&&sed -i '1 i\#XBOX_HDD_READY_GAMES' xbarchive/xbls.txt;
	  sudo rm -f xbarchive/XBOX_HDD_READ*;
	  sudo rm -f xbarchive/xbdg.txt;
	  sudo mkdir OGXB_Singles;	  	  
	  sub_menu4;
      sub_menu_admin;
      ;;
	  
	  2) clear;
      option_picked "Download Single Game";
      sub_menu5;
      sub_menu_admin;
      ;;
	  
	  3) clear;
      option_picked "Bulk Download Xbox Games # - I";
      sudo touch xbarchive/XBOX_HDD_READY_#-I.txt&&sudo lynx -dump -listonly $XBARCH2 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_#-I.txt&&sed -i '1 i\XBOX_HDD_READY_#-I' xbarchive/XBOX_HDD_READY_#-I.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_#-I.txt;
	  sub_menu4;
      sub_menu_admin;
      ;;
	  
	  4) clear;
      option_picked "Bulk Download Xbox Games J - Q";
      sudo touch xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo lynx -dump -listonly $XBARCH4 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_J-Q.txt&&sed -i '1 i\XBOX_HDD_READY_J-Q' xbarchive/XBOX_HDD_READY_J-Q.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_J-Q.txt;
	  sub_menu4;
      sub_menu_admin;
      ;;
	  
	  5) clear;
      option_picked "Bulk Download Xbox Games R - Z";
      sudo touch xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo lynx -dump -listonly $XBARCH5 | grep http | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_R-Z.txt&&sed -i '1 i\XBOX_HDD_READY_R-Z' xbarchive/XBOX_HDD_READY_R-Z.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_R-Z.txt;
	  sub_menu4;
      sub_menu_admin;
      ;;
	  
	  6) clear;
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

#Single Xbox download
#XBOX Sub Menu 5
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu5(){
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
	printf "          ${red}Please select 1 first to list the games and find the number of the game\n
                           then select 2 to enter number from the list or 3 to exit${normal}\n\n"
	printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "This will download single game from archive.org.\n\n"
    printf "\n${menu}***************************************************************************${normal}\n\n"
	printf "Make your selection '1-3' then hit enter\n\n"
	printf "Option 1) List of OG XBOX Games\n"
	printf "Option 2) Download Single OG XBOX Game From List\n"
	printf "Option 3) Will Exit to Menu\n\n"
	printf "${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} List of OG XBOX Games${normal}\n"
	printf "${menu}**${number} 2)${menu} Download Single Game From List${normal}\n"
	printf "${menu}**${number} 3)${menu} Exit To Main Menu ${normal}\n\n"
    printf "${menu}*********************************************${normal}\n"
    printf "${ENTER_LINE}Please enter a menu option and enter ${normal}\n"
    read sub5
  while [ sub5 != '' ]
  do
    if [[ $sub5 = "" ]]; then
      exit;
    else
      case $sub5 in
	  
	  1) clear;
	  less xbarchive/xbls.txt
	  sub_menu5;
      sub_menu_admin;
      ;;

      2)  clear;
      option_picked "Dowload Single Xbox Game From List";
	  echo "Enter Game Number From the List";
	  cat xbarchive/xbls.txt
		count="$(wc -l xbarchive/xbdl.txt | cut -f 1 -d' ')"
		n=""
		while true; do
		read -p 'Select option: ' n
		if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
        break
		fi
		done
		value2="$(sed -n "${n}p" xbarchive/xbdl.txt)"
		dlgame2="$XBARCH2$value2"
		sudo aria2c --file-allocation=none -c -x 10 -s 10 -d OGXB_Singles $dlgame2
		echo "The user selected option number $n: '$value2'"
	  sub_menu5;
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
