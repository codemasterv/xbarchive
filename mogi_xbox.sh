#!/bin/sh
#Variables
d="_DLC"
h="_HDD"
r="_READY"
l="_XBLA"
s="_360"
x="XBOX"
t="_2"
tt="_201710"
ARCH="https://archive.org/download/"
XBARCH="${ARCH}${x}${s}${l}"
XBARCH2="${ARCH}${x}${h}${r}"
XBARCH3="${ARCH}${x}${s}${l}${d}"
XBARCH4="${ARCH}${x}${h}${r}${t}"
XBARCH5="${ARCH}${x}${h}${r}${t}${tt}"

#Main Menu
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
then select 1-7 ${normal}\n\n"
printf "\n${menu}***************************************************************************${normal}\n\n"
printf "This will download the collection from archive.org. If you run into errors please try to\n\n"
printf "run option 6 Clean Files and redownload DB and dependencies with option 0 on the main menu\n\n"
printf "and with option 1 on the sub menus. Be sure to backup your files you want before running 4\n\n"
printf "\n${menu}***************************************************************************${normal}\n\n"
printf "Make your selection '0-7' then hit enter\n\n"
printf "${menu}****************************${normal}\n"
printf "${menu}**${number} 0)${menu} Download Dependencies ${normal}\n"
printf "${menu}**${number} 1)${menu} Build Latest XBOX Port of ${green}Super Mario 64${normal}\n"
printf "${menu}**${number} 2)${menu} Download ${green}O.G.Xbox Games${normal}\n"
printf "${menu}**${number} 3)${menu} Download ${green}XBOX 360 XBLAs ${normal}\n"
printf "${menu}**${number} 4)${menu} Download ${green}XBOX 360 ISOs ${normal}\n"
printf "${menu}**${number} 5)${menu} Download ${green}MAME ${normal}\n"
printf "${menu}**${number} 6)${menu} ${red}Clean Files ${normal}\n"
printf "${menu}**${number} 7)${menu} Exit ${normal}\n"
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
    sudo apt-get update -y&&sudo apt-get upgrade -y&&sudo apt-get install -y libssl*&&sudo apt install -y subversion&&sudo apt install -y dos2unix&&sudo apt install -y aria2&&sudo apt install -y build-essential&&sudo apt install -y cmake&&sudo apt install -y flex&&sudo apt install -y bison&&sudo apt install -y clang&&sudo apt install -y lld&&sudo apt install -y git&&sudo apt install -y llvm grep sed lynx p7zip-full p7zip-rar lftp&&sudo svn checkout https://github.com/codemasterv/xbarchive/trunk/xbarchive&&sudo dos2unix xbarchive/*.sh&&sudo touch *;
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
  option_picked "Xbox 360 ISO sub menu";
    printf "Xbox 360 ISO sub menu";
  sub_menu9;
;;

5) clear;
  option_picked "MAME";
    printf "MAME sub menu";
  sub_menu7;
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

\n) exit;
;;

*) clear;
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
    sudo touch xbarchive/XBOX_360_GAMES.txt&&sudo lynx -dump -listonly $XBARCH | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_GAMES.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_360_GAMES.txt&&touch xbarchive/x360dbg.txt&&nl xbarchive/XBOX_360_GAMES.txt > xbarchive/x360dbg.txt&&sed -i '1 i\#XBOX_360_XBLA_GAMES' xbarchive/x360dbg.txt&&sudo rm -f xbarchive/XBOX_360_GAMES.txt&&sudo mkdir XBLA_Singles;

    #XBOX_360_XBLA_DLC Readable List
    sudo touch xbarchive/XBOX_360_DLC.txt&&sudo lynx -dump -listonly $XBARCH3 | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_DLC.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_360_DLC.txt&&touch xbarchive/x360dbd.txt&&nl xbarchive/XBOX_360_DLC.txt > xbarchive/x360dbd.txt&&sed -i '1 i\#XBOX_360_XBLA_DLC' xbarchive/x360dbd.txt&&sudo rm -f xbarchive/XBOX_360_DLC.txt&&sudo mkdir XBLA_Singles_DLC;

    #XBOX_360_XBLA_DLC x360db3.txt
    sudo touch xbarchive/x360db3.txt&&sudo lynx -dump -listonly $XBARCH3 | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/x360db3.txt&&sudo sed -i 's/.\{48\}//' xbarchive/x360db3.txt&&sudo sed -i 's/ /%20/g' xbarchive/x360db3.txt;

    #XBOX_360_XBLA xbarchive/x360db2.txt
    sudo touch xbarchive/x360db2.txt&&sudo lynx -dump -listonly $XBARCH | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/x360db2.txt&&sudo sed -i 's/.\{48\}//' xbarchive/x360db2.txt&&sudo sed -i 's/ /%20/g' xbarchive/x360db2.txt;

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
    sudo touch xbarchive/XBOX_360_XBLA.txt&&sudo lynx -dump -listonly $XBARCH | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA.txt&&sed -i '1 i\XBOX_360_XBLA' xbarchive/XBOX_360_XBLA.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA.txt;
  sub_menu1;
  sub_menu_admin;
;;

6) clear;
  option_picked "Bulk Downloadig Xbox360 XBLA DLC";
    sudo touch xbarchive/XBOX_360_XBLA_DLC.txt&&sudo lynx -dump -listonly $XBARCH3 | grep https | grep \.rar$ | awk '{print $0}' > xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_360_XBLA_DLC.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_360_XBLA_DLC.txt&&sed -i '1 i\XBOX_360_XBLA_DLC' xbarchive/XBOX_360_XBLA_DLC.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_360_XBLA_DLC.txt;
  sub_menu1;
  sub_menu_admin;
;;

7) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
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
    sudo cat xbarchive/x360dbg.txt
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
    sudo cat xbarchive/x360dbd.txt
    count="$(wc -l xbarchive/x360db3.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    value="$(sed -n "${n}p" xbarchive/x360db3.txt)"
    dldlc="$XBARCH$value"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d XBLA_Singles_DLC $dldlc
    echo "The user selected option number $n: '$value'"
  sub_menu2;
  sub_menu_admin;
;;

3) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
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

x) exit;
;;

\n) exit;
;;

*) clear;
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
printf "Option 6) Unzip and FTP to XBOX\n"
printf "Option 7) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} Build Xbox DB Files ${normal}\n"
printf "${menu}**${number} 2)${menu} Download Single Game${normal}\n"
printf "${menu}**${number} 3)${menu} Bulk Download Xbox Games # - I${normal}\n"
printf "${menu}**${number} 4)${menu} Bulk Download Xbox Games J - Q${normal}\n"
printf "${menu}**${number} 5)${menu} Bulk Download Xbox Games R - Z${normal}\n"
printf "${menu}**${number} 6)${menu} Unzip and FTP to XBOX${normal}\n"
printf "${menu}**${number} 7)${menu} Main Menu ${normal}\n\n"
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
    sudo touch xbarchive/XBOX_HDD_READY.txt&&sudo lynx -dump -listonly $XBARCH2 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY.txt;

    #XBOX #- Readable List
    sudo touch xbarchive/XBOX_HDD_READY1.txt&&sudo lynx -dump -listonly $XBARCH4 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY1.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY1.txt;

    #XBOX #- Readable List
    sudo touch xbarchive/XBOX_HDD_READY2.txt&&sudo lynx -dump -listonly $XBARCH5 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY2.txt&&sudo sed -i 's/.\{49\}//' xbarchive/XBOX_HDD_READY2.txt;

    #XBOX #- Readable List and merge
    sudo touch xbarchive/xbdg.txt&&sudo cat xbarchive/XBOX_HDD_READY.txt > xbarchive/xbdg.txt&&sudo cat xbarchive/XBOX_HDD_READY1.txt >> xbarchive/xbdg.txt&&sudo cat xbarchive/XBOX_HDD_READY2.txt >> xbarchive/xbdg.txt&&sudo touch xbarchive/xbdl.txt&&sudo cat xbarchive/xbdg.txt > xbarchive/xbdl.txt&&sudo sed -i 's/ /%20/g' xbarchive/xbdl.txt&&sudo touch xbarchive/xbdg.txt&&sudo sed -i -e '\%(\=|/)$%d' -e 's%.*/%%' xbarchive/xbdg.txt&&sudo touch xbarchive/xbls.txt&&sudo nl xbarchive/xbdg.txt > xbarchive/xbls.txt&&sudo sed -i '1 i\#XBOX_HDD_READY_GAMES' xbarchive/xbls.txt;
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
    sudo touch xbarchive/XBOX_HDD_READY_#-I.txt&&sudo lynx -dump -listonly $XBARCH2 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_#-I.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_#-I.txt&&sed -i '1 i\XBOX_HDD_READY_#-I' xbarchive/XBOX_HDD_READY_#-I.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_#-I.txt;
  sub_menu4;
  sub_menu_admin;
;;

4) clear;
  option_picked "Bulk Download Xbox Games J - Q";
    sudo touch xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo lynx -dump -listonly $XBARCH4 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_J-Q.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_J-Q.txt&&sed -i '1 i\XBOX_HDD_READY_J-Q' xbarchive/XBOX_HDD_READY_J-Q.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_J-Q.txt;
  sub_menu4;
  sub_menu_admin;
;;

5) clear;
  option_picked "Bulk Download Xbox Games R - Z";
    sudo touch xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo lynx -dump -listonly $XBARCH5 | grep https | grep \.7z$ | awk '{print $0}' > xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo sed -i 's/.\{6\}//' xbarchive/XBOX_HDD_READY_R-Z.txt&&sudo sed -i 's/ /%20/g' xbarchive/XBOX_HDD_READY_R-Z.txt&&sed -i '1 i\XBOX_HDD_READY_R-Z' xbarchive/XBOX_HDD_READY_R-Z.txt&&./xbarchive/aria2files.sh xbarchive/XBOX_HDD_READY_R-Z.txt;
  sub_menu4;
  sub_menu_admin;
;;

6) clear;
option_picked "Unzip and FTP Game to xbox";
sub_menu6;
sub_menu_admin;
;;

7) clear;
option_picked "Exit To Main Menu";
show_menu;
sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
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
    sudo cat xbarchive/xbls.txt
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
sub_menu4;
sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
option_picked "Pick an option from the menu";
sub_menu1;
;;
esac
fi
done
}

#extract and ftp game
#XBOX Sub Menu 6
option_picked() {
  COLOR='\033[01;31m' # bold red
  RESET='\033[00;00m' # normal white
  MESSAGE=${@:-"${RESET}Error: No message passed"}
  echo "${COLOR}${MESSAGE}${RESET}"
}
sub_menu6(){
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
printf "Option 1) List of OG XBOX Games to FTP\n"
printf "Option 2) Unzip and FTP game to xbox\n"
printf "Option 3) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} List of OG XBOX Games to FTP${normal}\n"
printf "${menu}**${number} 2)${menu} Unzip and FTP game to xbox${normal}\n"
printf "${menu}**${number} 3)${menu} Exit To Main Menu ${normal}\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${ENTER_LINE}Please enter a menu option and enter ${normal}\n"
read sub6
while [ sub6 != '' ]
do
if [[ $sub6 = "" ]]; then
exit;
else
case $sub6 in

1) clear;
    cd OGXB_Singles/; 
    ./../xbarchive/ftpname.sh
    ./../xbarchive/ftpname2.sh
    cd ..;
    sudo touch xbarchive/ftplist1.txt&&sudo printf '%s\n' OGXB_Singles/*.7z > xbarchive/ftplist1.txt&&sudo sed -i 's/.\{13\}//' xbarchive/ftplist1.txt&&sudo nl xbarchive/ftplist1.txt > xbarchive/ftplist.txt&&sudo less xbarchive/ftplist.txt
  sub_menu6;
  sub_menu_admin;
;;

2) clear;
  option_picked "Unzip and FTP Your Game To Your XBOX From Here";
  echo "Enter Game Number From the List to ftp";
  cat xbarchive/ftplist.txt
  count="$(wc -l xbarchive/ftplist.txt | cut -f 1 -d' ')"
  n=""
  while true; do
  read -p 'Select option: ' n
  if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
  break
  fi
  done
  echo 
  #Below is the variables for the FTP information
  game="$(sed -n "${n}p" xbarchive/ftplist.txt)"
  game2="$(sed -n "${n}p" xbarchive/ftplist1.txt)"
  u=""
  echo "Enter Your XBOX FTP User Name: "
  echo "ftp username"
  read -p '' u
  p=""
  echo "Enter the FTP Password: "
  read -p '' p
  i=""
  echo "Enter the FTP IP: "
  read -p '' i
  xbd=""
  echo "Enter XBOX Drive Letter; Example: /G/games/ "
  read -p '' xbd
  XDIR=""
  echo "Enter the Name of the Game Directory; Example: Halo/ "
  read -p '' XDIR
  #Below is the unzip and ftp for single xbox games
  dest="OGXB_Singles/$XDIR"
  ogxb="OGXB_singles"
  sudo cp xbarchive/ftplist.txt xbarchive/ftplist2.txt&&sudo sed -i 's/\t/ /g' xbarchive/ftplist2.txt&&sudo sed -i 's/.\{7\}//' xbarchive/ftplist2.txt&&sudo mkdir $dest&&sudo mv "$ogxb"/"$game2" "$ogxb"/"$XDIR"/&&cd "$ogxb"/"$XDIR"/&&sudo 7z x $game2 -y&&sudo mv $game2 ../&&sudo mv */* .&& cd ../..&&sudo curl -u ${u}:${p} ftp://${i} -Q "MKD $xbd$XDIR"&&sudo lftp -e "mirror -R $ogxb/$XDIR/ $xbd$XDIR" -u ${u},${p} ${i}</dev/null&&echo "The user selected option number $n: '$game'"&&sudo rm -Rf "$ogxb"/"$XDIR";
  echo "The user selected option number $n: '$game'"
  break

  sub_menu6;
  sub_menu_admin;
;;

3) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
  option_picked "Pick an option from the menu";
  sub_menu1;
;;
esac
fi
done
}

#MAME_0.225_CHDs_merged
#MAME Sub Menu 7
sub_menu7(){
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
printf "Make your selection '1-4' then hit enter\n\n"
printf "Option 1) Will Build DB Files\n"
printf "Option 2) Will Let you download a single game from a list\n"
printf "Option 3) Will Bulk Download MAME_0.225_CHDs\n"
printf "Option 4) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} Build Mame DB Files ${normal}\n"
printf "${menu}**${number} 2)${menu} Download Single Game${normal}\n"
printf "${menu}**${number} 3)${menu} Bulk Download MAME_0.225_CHDs${normal}\n"
printf "${menu}**${number} 4)${menu} Main Menu ${normal}\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
read sub7
while [ sub7 != '' ]
do
if [[ $sub7 = "" ]]; then
exit;
else
case $sub7 in

1) clear;
  option_picked "Now Building Mame DB Files";
    ####################################
    mm="MAME_0.225_CHDs_merged/"
    ml="MAME_0.225_CHDs_merged_files.xml"
    MS="MAME_0.225_CHDs/"

    #MAME_0.225_CHDs_merged Readable List
    cd xbarchive/&&sudo wget -N "$ARCH""$mm"MAME_0.225_CHDs_merged_files.xml&&sudo grep '\"*.chd\"' ${ml} > MAME_0.225_CHDs_merged.txt&&sudo sed -i 's/.\{14\}//' MAME_0.225_CHDs_merged.txt&&egrep -o '[^"]*"' MAME_0.225_CHDs_merged.txt > mamedb.txt&&awk '{gsub("original\"", "");print}' mamedb.txt > MAME_0.225_CHDs_merged.txt&&awk '{gsub("source=\"", "");print}' MAME_0.225_CHDs_merged.txt > mamedb.txt&&grep '\S' mamedb.txt > MAME_0.225_CHDs_merged.txt&&sed -i 's/\"//g' MAME_0.225_CHDs_merged.txt&&cat MAME_0.225_CHDs_merged.txt > mamedb.txt&&awk '{printf("%01d %s\n", NR, $0)}' MAME_0.225_CHDs_merged.txt > mamedb.txt&&sed -i '1 i\#MAME_0.225_CHDs_merged' mamedb.txt&&sudo cp MAME_0.225_CHDs_merged.txt mamedl.txt&&sudo rm -f ${ml}&&sudo cp mamedl.txt mamesingle.txt&&cd ..&&sudo mkdir ${MS};

  sub_menu7;
  sub_menu_admin;
;;

2) clear;
  option_picked "Download Single Mame Game";
  sub_menu8;
  sub_menu_admin;
;;


3) clear;
  option_picked "Bulk Download MAME_0.225_CHDs";
    awk '{ printf "MAME_0.225_CHDs_merged/"; print }' xbarchive/mamedl.txt > xbarchive/mamedl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/mamedl2.txt > xbarchive/mamedl.txt&&sudo rm -f xbarchive/mamedl2.txt&&sed -i '1 i\MAME_0.225_CHDs' xbarchive/mamedl.txt&&sed -i '2d' xbarchive/mamedl.txt&&./xbarchive/aria2files.sh xbarchive/mamedl.txt&&sudo rm -f xbarchive/mamedl.txt;
  sub_menu7;
  sub_menu_admin;
;;

4) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
option_picked "Pick an option from the menu";
sub_menu1;
;;
esac
fi
done
}

#Single MAME download
#MAME Sub Menu 8
option_picked() {
  COLOR='\033[01;31m' # bold red
  RESET='\033[00;00m' # normal white
  MESSAGE=${@:-"${RESET}Error: No message passed"}
  echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu8(){
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
printf "Option 1) List of MAME Games\n"
printf "Option 2) Download Single MAME Game From List\n"
printf "Option 3) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} List of MAME_0.225 CHDs${normal}\n"
printf "${menu}**${number} 2)${menu} Download Single Game From List${normal}\n"
printf "${menu}**${number} 3)${menu} Exit To Main Menu ${normal}\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${ENTER_LINE}Please enter a menu option and enter ${normal}\n"
read sub8
while [ sub8 != '' ]
do
if [[ $sub8 = "" ]]; then
exit;
else
case $sub8 in

1) clear;
    less xbarchive/mamedb.txt
  sub_menu8;
  sub_menu_admin;
;;

2)  clear;
  option_picked "Dowload Single Mame Game From List";
    echo "Enter Game Number From the List";
    sudo cat xbarchive/mamedb.txt
    count="$(wc -l xbarchive/mamesingle.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuem="$(sed -n "${n}p" xbarchive/mamesingle.txt)"
    dlgamem="$ARCH$mm$valuem"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d MAME_Singles $dlgamem
    echo "The user selected option number $n: '$value3'"
  sub_menu7;
  sub_menu_admin;
;;

3) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
  option_picked "Pick an option from the menu";
  sub_menu1;
;;
esac
fi
done
}



#clear
#show_menu

#trap 'rm -Rf xbarchive/' INT
#trap 'rm -Rf xbarchive/' EXIT

#360 iso main
#XBOX 360 ISOs Sub Menu 9
option_picked() {
  COLOR='\033[01;31m' # bold red
  RESET='\033[00;00m' # normal white
  MESSAGE=${@:-"${RESET}Error: No message passed"}
  echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu9(){
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
printf "Make your selection '1-4' then hit enter\n\n"
printf "Option 1) Will Build XBOX 360 ISO DB Files\n"
printf "Option 2) Will Let you download a single XBOX 360 ISO from a list\n"
printf "Option 3) Will Bulk Download XBOX 360 ISOs (A1)\n"
printf "Option 4) Will Bulk Download XBOX 360 ISOs (A2)\n"
printf "Option 5) Will Bulk Download XBOX 360 ISOs (B1)\n"
printf "Option 6) Will Bulk Download XBOX 360 ISOs (B2)\n"
printf "Option 7) Will Bulk Download XBOX 360 ISOs (C1)\n"
printf "Option 8) Will Bulk Download XBOX 360 ISOs (C2)\n"
printf "Option 9) Will Bulk Download XBOX 360 ISOs (D1)\n"
printf "Option 10) Will Bulk Download XBOX 360 ISOs (D2)\n"
printf "Option 11) Will Bulk Download XBOX 360 ISOs (E)\n"
printf "Option 12) Will Bulk Download XBOX 360 ISOs (F1)\n"
printf "Option 13) Will Bulk Download XBOX 360 ISOs (F2)\n"
printf "Option 14) Will Bulk Download XBOX 360 ISOs (G)\n"
printf "Option 15) Will Bulk Download XBOX 360 ISOs (H)\n"
printf "Option 16) Will Bulk Download XBOX 360 ISOs (I)\n"
printf "Option 17) Will Bulk Download XBOX 360 ISOs (J)\n"
printf "Option 18) Will Bulk Download XBOX 360 ISOs (K)\n"
printf "Option 19) Will Bulk Download XBOX 360 ISOs (L)\n"
printf "Option 20) Will Bulk Download XBOX 360 ISOs (M1)\n"
printf "Option 21) Will Bulk Download XBOX 360 ISOs (M2)\n"
printf "Option 22) Will Bulk Download XBOX 360 ISOs (N)\n"
printf "Option 23) Will Bulk Download XBOX 360 ISOs (O)\n"
printf "Option 24) Will Bulk Download XBOX 360 ISOs (P)\n"
printf "Option 25) Will Bulk Download XBOX 360 ISOs (Q)\n"
printf "Option 26) Will Bulk Download XBOX 360 ISOs (R)\n"
printf "Option 27) Will Bulk Download XBOX 360 ISOs (S1)\n"
printf "Option 28) Will Bulk Download XBOX 360 ISOs (S2)\n"
printf "Option 29) Will Bulk Download XBOX 360 ISOs (T1)\n"
printf "Option 30) Will Bulk Download XBOX 360 ISOs (T2)\n"
printf "Option 31) Will Bulk Download XBOX 360 ISOs (U)\n"
printf "Option 32) Will Bulk Download XBOX 360 ISOs (V)\n"
printf "Option 33) Will Bulk Download XBOX 360 ISOs (W)\n"
printf "Option 34) Will Bulk Download XBOX 360 ISOs (X1)\n"
printf "Option 35) Will Bulk Download XBOX 360 ISOs (X2)\n"
printf "Option 36) Will Bulk Download XBOX 360 ISOs (Y)\n"
printf "Option 37) Will Bulk Download XBOX 360 ISOs (Z)\n"
printf "Option 38) Will Bulk Download XBOX 360 ISOs (NUMBERS)\n"
printf "Option 39) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} ${green}Build XBOX 360 ISO DB Files ${normal}\n"
printf "${menu}**${number} 2)${menu} ${red}Download Single XBOX 360 ISO${normal}\n"
printf "${menu}**${number} 3)${menu} Bulk Download XBOX 360 ISOs (A1)${normal}\n"
printf "${menu}**${number} 4)${menu} Bulk Download XBOX 360 ISOs (A2)${normal}\n"
printf "${menu}**${number} 5)${menu} Bulk Download XBOX 360 ISOs (B1)${normal}\n"
printf "${menu}**${number} 6)${menu} Bulk Download XBOX 360 ISOs (B2)${normal}\n"
printf "${menu}**${number} 7)${menu} Bulk Download XBOX 360 ISOs (C1)${normal}\n"
printf "${menu}**${number} 8)${menu} Bulk Download XBOX 360 ISOs (C2)${normal}\n"
printf "${menu}**${number} 9)${menu} Bulk Download XBOX 360 ISOs (D1)${normal}\n"
printf "${menu}**${number} 10)${menu} Bulk Download XBOX 360 ISOs (D2)${normal}\n"
printf "${menu}**${number} 11)${menu} Bulk Download XBOX 360 ISOs (E)${normal}\n"
printf "${menu}**${number} 12)${menu} Bulk Download XBOX 360 ISOs (F1)${normal}\n"
printf "${menu}**${number} 13)${menu} Bulk Download XBOX 360 ISOs (F2)${normal}\n"
printf "${menu}**${number} 14)${menu} Bulk Download XBOX 360 ISOs (G)${normal}\n"
printf "${menu}**${number} 15)${menu} Bulk Download XBOX 360 ISOs (H)${normal}\n"
printf "${menu}**${number} 16)${menu} Bulk Download XBOX 360 ISOs (I)${normal}\n"
printf "${menu}**${number} 17)${menu} Bulk Download XBOX 360 ISOs (J)${normal}\n"
printf "${menu}**${number} 18)${menu} Bulk Download XBOX 360 ISOs (K)${normal}\n"
printf "${menu}**${number} 19)${menu} Bulk Download XBOX 360 ISOs (L)${normal}\n"
printf "${menu}**${number} 20)${menu} Bulk Download XBOX 360 ISOs (M1)${normal}\n"
printf "${menu}**${number} 21)${menu} Bulk Download XBOX 360 ISOs (M2)${normal}\n"
printf "${menu}**${number} 22)${menu} Bulk Download XBOX 360 ISOs (N)${normal}\n"
printf "${menu}**${number} 23)${menu} Bulk Download XBOX 360 ISOs (O)${normal}\n"
printf "${menu}**${number} 24)${menu} Bulk Download XBOX 360 ISOs (P)${normal}\n"
printf "${menu}**${number} 25)${menu} Bulk Download XBOX 360 ISOs (Q)${normal}\n"
printf "${menu}**${number} 26)${menu} Bulk Download XBOX 360 ISOs (R)${normal}\n"
printf "${menu}**${number} 27)${menu} Bulk Download XBOX 360 ISOs (S1)${normal}\n"
printf "${menu}**${number} 28)${menu} Bulk Download XBOX 360 ISOs (S2)${normal}\n"
printf "${menu}**${number} 29)${menu} Bulk Download XBOX 360 ISOs (T1)${normal}\n"
printf "${menu}**${number} 30)${menu} Bulk Download XBOX 360 ISOs (T2)${normal}\n"
printf "${menu}**${number} 31)${menu} Bulk Download XBOX 360 ISOs (U)${normal}\n"
printf "${menu}**${number} 32)${menu} Bulk Download XBOX 360 ISOs (V)${normal}\n"
printf "${menu}**${number} 33)${menu} Bulk Download XBOX 360 ISOs (W)${normal}\n"
printf "${menu}**${number} 34)${menu} Bulk Download XBOX 360 ISOs (X1)${normal}\n"
printf "${menu}**${number} 35)${menu} Bulk Download XBOX 360 ISOs (X2)${normal}\n"
printf "${menu}**${number} 36)${menu} Bulk Download XBOX 360 ISOs (Y)${normal}\n"
printf "${menu}**${number} 37)${menu} Bulk Download XBOX 360 ISOs (Z)${normal}\n"
printf "${menu}**${number} 38)${menu} Bulk Download XBOX 360 ISOs (NUMBERS)${normal}\n"
printf "${menu}**${number} 39)${menu} Main Menu ${normal}\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${normal}\n"
read sub9
while [ sub9 != '' ]
do
if [[ $sub9 = "" ]]; then
exit;
else
case $sub9 in

1) clear;
  option_picked "Now Building XBOX 360 (A ISO List) ISO DB Files";

    ###############(LETTER A 1)#####################
    x3m="redump-xbox360-a/"
    x3l="redump-xbox360-a_files.xml"
    X3S="redump-xbox360-a"

    ###############(LETTER A 2)#####################
    x3m2="redump-xbox360-a-2/"
    x3l2="redump-xbox360-a-2_files.xml"
    X3S2="redump-xbox360-a-2"

    ###############(LETTER B 1)#####################
    x3mb="redump-xbox360-b/"
    x3lb="redump-xbox360-b_files.xml"
    X3SB="redump-xbox360-b"

    ###############(LETTER B 2)#####################
    x3mb2="redump-xbox360-b-2/"
    x3lb2="redump-xbox360-b-2_files.xml"
    X3SB2="redump-xbox360-b-2"

    ###############(LETTER C 1)#####################
    x3mc="redump-xbox360-c/"
    x3lc="redump-xbox360-c_files.xml"
    X3SC="redump-xbox360-c"

    ###############(LETTER C 2)#####################
    x3mc2="redump-xbox360-c-2/"
    x3lc2="redump-xbox360-c-2_files.xml"
    X3SC2="redump-xbox360-c-2"

    ###############(LETTER D 1)#####################
    x3md="redump-xbox360-d-1/"
    x3ld="redump-xbox360-d-1_files.xml"
    X3SD="redump-xbox360-d-1"

    ###############(LETTER D 2)#####################
    x3md2="redump-xbox360-d--2/"
    x3ld2="redump-xbox360-d--2_files.xml"
    X3SD2="redump-xbox360-d--2"

    ###############(LETTER E)#####################
    x3me="redump-xbox360-e/"
    x3le="redump-xbox360-e_files.xml"
    X3SE="redump-xbox360-e"

    ###############(LETTER F 1)#####################
    x3mf="redump-xbox360-f-1/"
    x3lf="redump-xbox360-f-1_files.xml"
    X3SF="redump-xbox360-f-1"

    ###############(LETTER F 2)#####################
    x3mf2="redump-xbox360-f-2/"
    x3lf2="redump-xbox360-f-2_files.xml"
    X3SF2="redump-xbox360-f-2"

    ###############(LETTER G)#####################
    x3mg="redump-xbox360-g/"
    x3lg="redump-xbox360-g_files.xml"
    X3SG="redump-xbox360-g"

    ###############(LETTER H)#####################
    x3mh="redump-xbox360-h/"
    x3lh="redump-xbox360-h_files.xml"
    X3SH="redump-xbox360-h"

    ###############(LETTER I)#####################
    x3mi="redump-xbox360-i/"
    x3li="redump-xbox360-i_files.xml"
    X3SI="redump-xbox360-i"

    ###############(LETTER J)#####################
    x3mj="redump-xbox360-j/"
    x3lj="redump-xbox360-j_files.xml"
    X3SJ="redump-xbox360-j"

    ###############(LETTER K)#####################
    x3mk="redump-xbox360-k/"
    x3lk="redump-xbox360-k_files.xml"
    X3SK="redump-xbox360-k"

    ###############(LETTER L)#####################
    x3ml="redump-xbox360-l/"
    x3ll="redump-xbox360-l_files.xml"
    X3SL="redump-xbox360-l"

    ###############(LETTER M 1)#####################
    x3mm="redump-xbox360-m-1/"
    x3lm="redump-xbox360-m-1_files.xml"
    X3SM="redump-xbox360-m-1"

    ###############(LETTER M 2)#####################
    x3mm2="redump-xbox360-m-2/"
    x3lm2="redump-xbox360-m-2_files.xml"
    X3SM2="redump-xbox360-m-2"

    ###############(LETTER N)#####################
    x3mn="redump-xbox360-n/"
    x3ln="redump-xbox360-n_files.xml"
    X3SN="redump-xbox360-n"

    ###############(LETTER O)#####################
    x3mo="redump-xbox360-o/"
    x3lo="redump-xbox360-o_files.xml"
    X3SO="redump-xbox360-o"

    ###############(LETTER P)#####################
    x3mp="redump-xbox360-p/"
    x3lp="redump-xbox360-p_files.xml"
    X3SP="redump-xbox360-p"

    ###############(LETTER Q)#####################
    x3mq="redump-xbox360-q/"
    x3lq="redump-xbox360-q_files.xml"
    X3SQ="redump-xbox360-q"

    ###############(LETTER R)#####################
    x3mr="redump-xbox360-r/"
    x3lr="redump-xbox360-r_files.xml"
    X3SR="redump-xbox360-r"

    ###############(LETTER S 1)#####################
    x3ms="redump-xbox360-s/"
    x3ls="redump-xbox360-s_files.xml"
    X3SS="redump-xbox360-s"

    ###############(LETTER S 2)#####################
    x3ms2="redump-xbox360-s-2/"
    x3ls2="redump-xbox360-s-2_files.xml"
    X3SS2="redump-xbox360-s-2"

    ###############(LETTER T 1)#####################
    x3mt="redump-xbox360-t-1/"
    x3lt="redump-xbox360-t-1_files.xml"
    X3ST="redump-xbox360-t-1"

    ###############(LETTER T 2)#####################
    x3mt2="redump-xbox360-t-2/"
    x3lt2="redump-xbox360-t-2_files.xml"
    X3ST2="redump-xbox360-t-2"

    ###############(LETTER U)#####################
    x3mu="redump-xbox360-u/"
    x3lu="redump-xbox360-u_files.xml"
    X3SU="redump-xbox360-u"

    ###############(LETTER V)#####################
    x3mv="redump-xbox360-v/"
    x3lv="redump-xbox360-v_files.xml"
    X3SV="redump-xbox360-v"

    ###############(LETTER W)#####################
    x3mw="redump-xbox360-w/"
    x3lw="redump-xbox360-w_files.xml"
    X3SW="redump-xbox360-w"

    ###############(LETTER X 1)#####################
    x3mx="redump-xbox360-x-1/"
    x3lx="redump-xbox360-x-1_files.xml"
    X3SX="redump-xbox360-x-1"

    ###############(LETTER X 2)#####################
    x3mx2="redump-xbox360-x-2/"
    x3lx2="redump-xbox360-x-2_files.xml"
    X3SX2="redump-xbox360-x-2"

    ###############(LETTER Y)#####################
    x3my="redump-xbox360-y/"
    x3ly="redump-xbox360-y_files.xml"
    X3SY="redump-xbox360-y"

    ###############(LETTER Z)#####################
    x3mz="redump-xbox360-z/"
    x3lz="redump-xbox360-z_files.xml"
    X3SZ="redump-xbox360-z"

    ###############(LETTER Numbers)#####################
    n3m="redump-xbox360-numbers/"
    n3l="redump-xbox360-numbers_files.xml"
    n3S="redump-xbox360-numbers"

    #XBOX 360 ISOs Readable List A
    cd xbarchive/&&sudo wget -N "$ARCH""$x3m"redump-xbox360-a_files.xml&&sudo grep '\"*.zip\"' ${x3l} > redump-xbox360-a.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-a.txt&&egrep -o '[^"]*"' redump-xbox360-a.txt > 360iso_a_db.txt&&awk '{gsub("original\"", "");print}' 360iso_a_db.txt > redump-xbox360-a.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-a.txt > 360iso_a_db.txt&&grep '\S' 360iso_a_db.txt > redump-xbox360-a.txt&&sed -i 's/\"//g' redump-xbox360-a.txt&&cat redump-xbox360-a.txt > 360iso_a_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-a.txt > 360iso_a_db.txt&&sed -i '1 i\#redump-xbox360-a' 360iso_a_db.txt&&sudo cp redump-xbox360-a.txt 360iso_a_dl.txt&&sudo rm -f ${x3l}&&sudo cp 360iso_a_dl.txt 360iso_a_single.txt&&cd ..&&sudo mkdir ${X3S};

    #XBOX 360 ISOs Readable List A 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3m2"redump-xbox360-a-2_files.xml&&sudo grep '\"*.zip\"' ${x3l2} > redump-xbox360-a2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-a2.txt&&egrep -o '[^"]*"' redump-xbox360-a2.txt > 360iso_a2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_a2_db.txt > redump-xbox360-a2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-a2.txt > 360iso_a2_db.txt&&grep '\S' 360iso_a2_db.txt > redump-xbox360-a2.txt&&sed -i 's/\"//g' redump-xbox360-a2.txt&&cat redump-xbox360-a2.txt > 360iso_a2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-a2.txt > 360iso_a2_db.txt&&sed -i '1 i\#redump-xbox360-a-2' 360iso_a2_db.txt&&sudo cp redump-xbox360-a2.txt 360iso_a2_dl.txt&&sudo rm -f ${x3l2}&&sudo cp 360iso_a2_dl.txt 360iso_a2_single.txt&&cd ..&&sudo mkdir ${X3S2};

    #XBOX 360 ISOs Readable List B
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mb"redump-xbox360-b_files.xml&&sudo grep '\"*.zip\"' ${x3lb} > redump-xbox360-b.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-b.txt&&egrep -o '[^"]*"' redump-xbox360-b.txt > 360iso_b_db.txt&&awk '{gsub("original\"", "");print}' 360iso_b_db.txt > redump-xbox360-b.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-b.txt > 360iso_b_db.txt&&grep '\S' 360iso_b_db.txt > redump-xbox360-b.txt&&sed -i 's/\"//g' redump-xbox360-b.txt&&cat redump-xbox360-b.txt > 360iso_b_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-b.txt > 360iso_b_db.txt&&sed -i '1 i\#redump-xbox360-b' 360iso_b_db.txt&&sudo cp redump-xbox360-b.txt 360iso_b_dl.txt&&sudo rm -f ${x3lb}&&sudo cp 360iso_b_dl.txt 360iso_b_single.txt&&cd ..&&sudo mkdir ${X3SB};

    #XBOX 360 ISOs Readable List B 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mb2"redump-xbox360-b-2_files.xml&&sudo grep '\"*.zip\"' ${x3lb2} > redump-xbox360-b2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-b2.txt&&egrep -o '[^"]*"' redump-xbox360-b2.txt > 360iso_b2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_b2_db.txt > redump-xbox360-b2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-b2.txt > 360iso_b2_db.txt&&grep '\S' 360iso_b2_db.txt > redump-xbox360-b2.txt&&sed -i 's/\"//g' redump-xbox360-b2.txt&&cat redump-xbox360-b2.txt > 360iso_b2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-b2.txt > 360iso_b2_db.txt&&sed -i '1 i\#redump-xbox360-b2' 360iso_b2_db.txt&&sudo cp redump-xbox360-b2.txt 360iso_b2_dl.txt&&sudo rm -f ${x3lb2}&&sudo cp 360iso_b2_dl.txt 360iso_b2_single.txt&&cd ..&&sudo mkdir ${X3SB2};

    #XBOX 360 ISOs Readable List C
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mc"redump-xbox360-c_files.xml&&sudo grep '\"*.zip\"' ${x3lc} > redump-xbox360-c.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-c.txt&&egrep -o '[^"]*"' redump-xbox360-c.txt > 360iso_c_db.txt&&awk '{gsub("original\"", "");print}' 360iso_c_db.txt > redump-xbox360-c.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-c.txt > 360iso_c_db.txt&&grep '\S' 360iso_c_db.txt > redump-xbox360-c.txt&&sed -i 's/\"//g' redump-xbox360-c.txt&&cat redump-xbox360-c.txt > 360iso_c_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-c.txt > 360iso_c_db.txt&&sed -i '1 i\#redump-xbox360-c' 360iso_c_db.txt&&sudo cp redump-xbox360-c.txt 360iso_c_dl.txt&&sudo rm -f ${x3lc}&&sudo cp 360iso_c_dl.txt 360iso_c_single.txt&&cd ..&&sudo mkdir ${X3SC};

    #XBOX 360 ISOs Readable List C 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mc2"redump-xbox360-c-2_files.xml&&sudo grep '\"*.zip\"' ${x3lc2} > redump-xbox360-c2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-c2.txt&&egrep -o '[^"]*"' redump-xbox360-c2.txt > 360iso_c2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_c2_db.txt > redump-xbox360-c2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-c2.txt > 360iso_c2_db.txt&&grep '\S' 360iso_c2_db.txt > redump-xbox360-c2.txt&&sed -i 's/\"//g' redump-xbox360-c2.txt&&cat redump-xbox360-c2.txt > 360iso_c2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-c2.txt > 360iso_c2_db.txt&&sed -i '1 i\#redump-xbox360-c2' 360iso_c2_db.txt&&sudo cp redump-xbox360-c2.txt 360iso_c2_dl.txt&&sudo rm -f ${x3lc2}&&sudo cp 360iso_c2_dl.txt 360iso_c2_single.txt&&cd ..&&sudo mkdir ${X3SC2};

    #XBOX 360 ISOs Readable List D
    cd xbarchive/&&sudo wget -N "$ARCH""$x3md"redump-xbox360-d-1_files.xml&&sudo grep '\"*.zip\"' ${x3ld} > redump-xbox360-d.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-d.txt&&egrep -o '[^"]*"' redump-xbox360-d.txt > 360iso_d_db.txt&&awk '{gsub("original\"", "");print}' 360iso_d_db.txt > redump-xbox360-d.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-d.txt > 360iso_d_db.txt&&grep '\S' 360iso_d_db.txt > redump-xbox360-d.txt&&sed -i 's/\"//g' redump-xbox360-d.txt&&cat redump-xbox360-d.txt > 360iso_d_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-d.txt > 360iso_d_db.txt&&sed -i '1 i\#redump-xbox360-d' 360iso_d_db.txt&&sudo cp redump-xbox360-d.txt 360iso_d_dl.txt&&sudo rm -f ${x3ld}&&sudo cp 360iso_d_dl.txt 360iso_d_single.txt&&cd ..&&sudo mkdir ${X3SD};

    #XBOX 360 ISOs Readable List D 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3md2"redump-xbox360-d--2_files.xml&&sudo grep '\"*.zip\"' ${x3ld2} > redump-xbox360-d2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-d2.txt&&egrep -o '[^"]*"' redump-xbox360-d2.txt > 360iso_d2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_d2_db.txt > redump-xbox360-d2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-d2.txt > 360iso_d2_db.txt&&grep '\S' 360iso_d2_db.txt > redump-xbox360-d2.txt&&sed -i 's/\"//g' redump-xbox360-d2.txt&&cat redump-xbox360-d2.txt > 360iso_d2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-d2.txt > 360iso_d2_db.txt&&sed -i '1 i\#redump-xbox360-d2' 360iso_d2_db.txt&&sudo cp redump-xbox360-d2.txt 360iso_d2_dl.txt&&sudo rm -f ${x3ld2}&&sudo cp 360iso_d2_dl.txt 360iso_d2_single.txt&&cd ..&&sudo mkdir ${X3SD2};

    #XBOX 360 ISOs Readable List E
    cd xbarchive/&&sudo wget -N "$ARCH""$x3me"redump-xbox360-e_files.xml&&sudo grep '\"*.zip\"' ${x3le} > redump-xbox360-e.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-e.txt&&egrep -o '[^"]*"' redump-xbox360-e.txt > 360iso_e_db.txt&&awk '{gsub("original\"", "");print}' 360iso_e_db.txt > redump-xbox360-e.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-e.txt > 360iso_e_db.txt&&grep '\S' 360iso_e_db.txt > redump-xbox360-e.txt&&sed -i 's/\"//g' redump-xbox360-e.txt&&cat redump-xbox360-e.txt > 360iso_e_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-e.txt > 360iso_e_db.txt&&sed -i '1 i\#redump-xbox360-e' 360iso_e_db.txt&&sudo cp redump-xbox360-e.txt 360iso_e_dl.txt&&sudo rm -f ${x3le}&&sudo cp 360iso_e_dl.txt 360iso_e_single.txt&&cd ..&&sudo mkdir ${X3SE};

    #XBOX 360 ISOs Readable List F
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mf"redump-xbox360-f-1_files.xml&&sudo grep '\"*.zip\"' ${x3lf} > redump-xbox360-f.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-f.txt&&egrep -o '[^"]*"' redump-xbox360-f.txt > 360iso_f_db.txt&&awk '{gsub("original\"", "");print}' 360iso_f_db.txt > redump-xbox360-f.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-f.txt > 360iso_f_db.txt&&grep '\S' 360iso_f_db.txt > redump-xbox360-f.txt&&sed -i 's/\"//g' redump-xbox360-f.txt&&cat redump-xbox360-f.txt > 360iso_f_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-f.txt > 360iso_f_db.txt&&sed -i '1 i\#redump-xbox360-f' 360iso_f_db.txt&&sudo cp redump-xbox360-f.txt 360iso_f_dl.txt&&sudo rm -f ${x3lf}&&sudo cp 360iso_f_dl.txt 360iso_f_single.txt&&cd ..&&sudo mkdir ${X3SF};

    #XBOX 360 ISOs Readable List F 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mf2"redump-xbox360-f-2_files.xml&&sudo grep '\"*.zip\"' ${x3lf2} > redump-xbox360-f2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-f2.txt&&egrep -o '[^"]*"' redump-xbox360-f2.txt > 360iso_f2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_f2_db.txt > redump-xbox360-f2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-f2.txt > 360iso_f2_db.txt&&grep '\S' 360iso_f2_db.txt > redump-xbox360-f2.txt&&sed -i 's/\"//g' redump-xbox360-f2.txt&&cat redump-xbox360-f2.txt > 360iso_f2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-f2.txt > 360iso_f2_db.txt&&sed -i '1 i\#redump-xbox360-f2' 360iso_f2_db.txt&&sudo cp redump-xbox360-f2.txt 360iso_f2_dl.txt&&sudo rm -f ${x3lf2}&&sudo cp 360iso_f2_dl.txt 360iso_f2_single.txt&&cd ..&&sudo mkdir ${X3SF2};

    #XBOX 360 ISOs Readable List G
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mg"redump-xbox360-g_files.xml&&sudo grep '\"*.zip\"' ${x3lg} > redump-xbox360-g.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-g.txt&&egrep -o '[^"]*"' redump-xbox360-g.txt > 360iso_g_db.txt&&awk '{gsub("original\"", "");print}' 360iso_g_db.txt > redump-xbox360-g.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-g.txt > 360iso_g_db.txt&&grep '\S' 360iso_g_db.txt > redump-xbox360-g.txt&&sed -i 's/\"//g' redump-xbox360-g.txt&&cat redump-xbox360-g.txt > 360iso_g_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-g.txt > 360iso_g_db.txt&&sed -i '1 i\#redump-xbox360-g' 360iso_g_db.txt&&sudo cp redump-xbox360-g.txt 360iso_g_dl.txt&&sudo rm -f ${x3lg}&&sudo cp 360iso_g_dl.txt 360iso_g_single.txt&&cd ..&&sudo mkdir ${X3SG};

    #XBOX 360 ISOs Readable List H
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mh"redump-xbox360-h_files.xml&&sudo grep '\"*.zip\"' ${x3lh} > redump-xbox360-h.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-h.txt&&egrep -o '[^"]*"' redump-xbox360-h.txt > 360iso_h_db.txt&&awk '{gsub("original\"", "");print}' 360iso_h_db.txt > redump-xbox360-h.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-h.txt > 360iso_h_db.txt&&grep '\S' 360iso_h_db.txt > redump-xbox360-h.txt&&sed -i 's/\"//g' redump-xbox360-h.txt&&cat redump-xbox360-h.txt > 360iso_h_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-h.txt > 360iso_h_db.txt&&sed -i '1 i\#redump-xbox360-h' 360iso_h_db.txt&&sudo cp redump-xbox360-h.txt 360iso_h_dl.txt&&sudo rm -f ${x3lh}&&sudo cp 360iso_h_dl.txt 360iso_h_single.txt&&cd ..&&sudo mkdir ${X3SH};

    #XBOX 360 ISOs Readable List I
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mi"redump-xbox360-i_files.xml&&sudo grep '\"*.zip\"' ${x3li} > redump-xbox360-i.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-i.txt&&egrep -o '[^"]*"' redump-xbox360-i.txt > 360iso_i_db.txt&&awk '{gsub("original\"", "");print}' 360iso_i_db.txt > redump-xbox360-i.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-i.txt > 360iso_i_db.txt&&grep '\S' 360iso_i_db.txt > redump-xbox360-i.txt&&sed -i 's/\"//g' redump-xbox360-i.txt&&cat redump-xbox360-i.txt > 360iso_i_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-i.txt > 360iso_i_db.txt&&sed -i '1 i\#redump-xbox360-i' 360iso_i_db.txt&&sudo cp redump-xbox360-i.txt 360iso_i_dl.txt&&sudo rm -f ${x3li}&&sudo cp 360iso_i_dl.txt 360iso_i_single.txt&&cd ..&&sudo mkdir ${X3SI};

    #XBOX 360 ISOs Readable List J
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mj"redump-xbox360-j_files.xml&&sudo grep '\"*.zip\"' ${x3lj} > redump-xbox360-j.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-j.txt&&egrep -o '[^"]*"' redump-xbox360-j.txt > 360iso_j_db.txt&&awk '{gsub("original\"", "");print}' 360iso_j_db.txt > redump-xbox360-j.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-j.txt > 360iso_j_db.txt&&grep '\S' 360iso_j_db.txt > redump-xbox360-j.txt&&sed -i 's/\"//g' redump-xbox360-j.txt&&cat redump-xbox360-j.txt > 360iso_j_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-j.txt > 360iso_j_db.txt&&sed -i '1 i\#redump-xbox360-j' 360iso_j_db.txt&&sudo cp redump-xbox360-j.txt 360iso_j_dl.txt&&sudo rm -f ${x3lj}&&sudo cp 360iso_j_dl.txt 360iso_j_single.txt&&cd ..&&sudo mkdir ${X3SJ};

    #XBOX 360 ISOs Readable List K
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mk"redump-xbox360-k_files.xml&&sudo grep '\"*.zip\"' ${x3lk} > redump-xbox360-k.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-k.txt&&egrep -o '[^"]*"' redump-xbox360-k.txt > 360iso_k_db.txt&&awk '{gsub("original\"", "");print}' 360iso_k_db.txt > redump-xbox360-k.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-k.txt > 360iso_k_db.txt&&grep '\S' 360iso_k_db.txt > redump-xbox360-k.txt&&sed -i 's/\"//g' redump-xbox360-k.txt&&cat redump-xbox360-k.txt > 360iso_k_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-k.txt > 360iso_k_db.txt&&sed -i '1 i\#redump-xbox360-k' 360iso_k_db.txt&&sudo cp redump-xbox360-k.txt 360iso_k_dl.txt&&sudo rm -f ${x3lk}&&sudo cp 360iso_k_dl.txt 360iso_k_single.txt&&cd ..&&sudo mkdir ${X3SK};

    #XBOX 360 ISOs Readable List L
    cd xbarchive/&&sudo wget -N "$ARCH""$x3ml"redump-xbox360-l_files.xml&&sudo grep '\"*.zip\"' ${x3ll} > redump-xbox360-l.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-l.txt&&egrep -o '[^"]*"' redump-xbox360-l.txt > 360iso_l_db.txt&&awk '{gsub("original\"", "");print}' 360iso_l_db.txt > redump-xbox360-l.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-l.txt > 360iso_l_db.txt&&grep '\S' 360iso_l_db.txt > redump-xbox360-l.txt&&sed -i 's/\"//g' redump-xbox360-l.txt&&cat redump-xbox360-l.txt > 360iso_l_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-l.txt > 360iso_l_db.txt&&sed -i '1 i\#redump-xbox360-l' 360iso_l_db.txt&&sudo cp redump-xbox360-l.txt 360iso_l_dl.txt&&sudo rm -f ${x3ll}&&sudo cp 360iso_l_dl.txt 360iso_l_single.txt&&cd ..&&sudo mkdir ${X3SL};

    #XBOX 360 ISOs Readable List M
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mm"redump-xbox360-m-1_files.xml&&sudo grep '\"*.zip\"' ${x3lm} > redump-xbox360-m.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-m.txt&&egrep -o '[^"]*"' redump-xbox360-m.txt > 360iso_m_db.txt&&awk '{gsub("original\"", "");print}' 360iso_m_db.txt > redump-xbox360-m.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-m.txt > 360iso_m_db.txt&&grep '\S' 360iso_m_db.txt > redump-xbox360-m.txt&&sed -i 's/\"//g' redump-xbox360-m.txt&&cat redump-xbox360-m.txt > 360iso_m_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-m.txt > 360iso_m_db.txt&&sed -i '1 i\#redump-xbox360-m' 360iso_m_db.txt&&sudo cp redump-xbox360-m.txt 360iso_m_dl.txt&&sudo rm -f ${x3lm}&&sudo cp 360iso_m_dl.txt 360iso_m_single.txt&&cd ..&&sudo mkdir ${X3SM};

    #XBOX 360 ISOs Readable List M 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mm2"redump-xbox360-m-2_files.xml&&sudo grep '\"*.zip\"' ${x3lm2} > redump-xbox360-m2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-m2.txt&&egrep -o '[^"]*"' redump-xbox360-m2.txt > 360iso_m2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_m2_db.txt > redump-xbox360-m2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-m2.txt > 360iso_m2_db.txt&&grep '\S' 360iso_m2_db.txt > redump-xbox360-m2.txt&&sed -i 's/\"//g' redump-xbox360-m2.txt&&cat redump-xbox360-m2.txt > 360iso_m2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-m2.txt > 360iso_m2_db.txt&&sed -i '1 i\#redump-xbox360-m2' 360iso_m2_db.txt&&sudo cp redump-xbox360-m2.txt 360iso_m2_dl.txt&&sudo rm -f ${x3lm2}&&sudo cp 360iso_m2_dl.txt 360iso_m2_single.txt&&cd ..&&sudo mkdir ${X3SM2};

    #XBOX 360 ISOs Readable List N
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mn"redump-xbox360-n_files.xml&&sudo grep '\"*.zip\"' ${x3ln} > redump-xbox360-n.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-n.txt&&egrep -o '[^"]*"' redump-xbox360-n.txt > 360iso_n_db.txt&&awk '{gsub("original\"", "");print}' 360iso_n_db.txt > redump-xbox360-n.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-n.txt > 360iso_n_db.txt&&grep '\S' 360iso_n_db.txt > redump-xbox360-n.txt&&sed -i 's/\"//g' redump-xbox360-n.txt&&cat redump-xbox360-n.txt > 360iso_n_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-n.txt > 360iso_n_db.txt&&sed -i '1 i\#redump-xbox360-n' 360iso_n_db.txt&&sudo cp redump-xbox360-n.txt 360iso_n_dl.txt&&sudo rm -f ${x3ln}&&sudo cp 360iso_n_dl.txt 360iso_n_single.txt&&cd ..&&sudo mkdir ${X3SN};

    #XBOX 360 ISOs Readable List O
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mo"redump-xbox360-o_files.xml&&sudo grep '\"*.zip\"' ${x3lo} > redump-xbox360-o.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-o.txt&&egrep -o '[^"]*"' redump-xbox360-o.txt > 360iso_o_db.txt&&awk '{gsub("original\"", "");print}' 360iso_o_db.txt > redump-xbox360-o.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-o.txt > 360iso_o_db.txt&&grep '\S' 360iso_o_db.txt > redump-xbox360-o.txt&&sed -i 's/\"//g' redump-xbox360-o.txt&&cat redump-xbox360-o.txt > 360iso_o_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-o.txt > 360iso_o_db.txt&&sed -i '1 i\#redump-xbox360-o' 360iso_o_db.txt&&sudo cp redump-xbox360-o.txt 360iso_o_dl.txt&&sudo rm -f ${x3lo}&&sudo cp 360iso_o_dl.txt 360iso_o_single.txt&&cd ..&&sudo mkdir ${X3SO};

    #XBOX 360 ISOs Readable List P
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mp"redump-xbox360-p_files.xml&&sudo grep '\"*.zip\"' ${x3lp} > redump-xbox360-p.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-p.txt&&egrep -o '[^"]*"' redump-xbox360-p.txt > 360iso_p_db.txt&&awk '{gsub("original\"", "");print}' 360iso_p_db.txt > redump-xbox360-p.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-p.txt > 360iso_p_db.txt&&grep '\S' 360iso_p_db.txt > redump-xbox360-p.txt&&sed -i 's/\"//g' redump-xbox360-p.txt&&cat redump-xbox360-p.txt > 360iso_p_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-p.txt > 360iso_p_db.txt&&sed -i '1 i\#redump-xbox360-p' 360iso_p_db.txt&&sudo cp redump-xbox360-p.txt 360iso_p_dl.txt&&sudo rm -f ${x3lp}&&sudo cp 360iso_p_dl.txt 360iso_p_single.txt&&cd ..&&sudo mkdir ${X3SP};

    #XBOX 360 ISOs Readable List Q
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mq"redump-xbox360-q_files.xml&&sudo grep '\"*.zip\"' ${x3lq} > redump-xbox360-q.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-q.txt&&egrep -o '[^"]*"' redump-xbox360-q.txt > 360iso_q_db.txt&&awk '{gsub("original\"", "");print}' 360iso_q_db.txt > redump-xbox360-q.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-q.txt > 360iso_q_db.txt&&grep '\S' 360iso_q_db.txt > redump-xbox360-q.txt&&sed -i 's/\"//g' redump-xbox360-q.txt&&cat redump-xbox360-q.txt > 360iso_q_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-q.txt > 360iso_q_db.txt&&sed -i '1 i\#redump-xbox360-q' 360iso_q_db.txt&&sudo cp redump-xbox360-q.txt 360iso_q_dl.txt&&sudo rm -f ${x3lq}&&sudo cp 360iso_q_dl.txt 360iso_q_single.txt&&cd ..&&sudo mkdir ${X3SQ};

    #XBOX 360 ISOs Readable List R
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mr"redump-xbox360-r_files.xml&&sudo grep '\"*.zip\"' ${x3lr} > redump-xbox360-r.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-r.txt&&egrep -o '[^"]*"' redump-xbox360-r.txt > 360iso_r_db.txt&&awk '{gsub("original\"", "");print}' 360iso_r_db.txt > redump-xbox360-r.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-r.txt > 360iso_r_db.txt&&grep '\S' 360iso_r_db.txt > redump-xbox360-r.txt&&sed -i 's/\"//g' redump-xbox360-r.txt&&cat redump-xbox360-r.txt > 360iso_r_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-r.txt > 360iso_r_db.txt&&sed -i '1 i\#redump-xbox360-r' 360iso_r_db.txt&&sudo cp redump-xbox360-r.txt 360iso_r_dl.txt&&sudo rm -f ${x3lr}&&sudo cp 360iso_r_dl.txt 360iso_r_single.txt&&cd ..&&sudo mkdir ${X3SR};

    #XBOX 360 ISOs Readable List S
    cd xbarchive/&&sudo wget -N "$ARCH""$x3ms"redump-xbox360-s_files.xml&&sudo grep '\"*.zip\"' ${x3ls} > redump-xbox360-s.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-s.txt&&egrep -o '[^"]*"' redump-xbox360-s.txt > 360iso_s_db.txt&&awk '{gsub("original\"", "");print}' 360iso_s_db.txt > redump-xbox360-s.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-s.txt > 360iso_s_db.txt&&grep '\S' 360iso_s_db.txt > redump-xbox360-s.txt&&sed -i 's/\"//g' redump-xbox360-s.txt&&cat redump-xbox360-s.txt > 360iso_s_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-s.txt > 360iso_s_db.txt&&sed -i '1 i\#redump-xbox360-s' 360iso_s_db.txt&&sudo cp redump-xbox360-s.txt 360iso_s_dl.txt&&sudo rm -f ${x3ls}&&sudo cp 360iso_s_dl.txt 360iso_s_single.txt&&cd ..&&sudo mkdir ${X3SS};

    #XBOX 360 ISOs Readable List S 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3ms2"redump-xbox360-s-2_files.xml&&sudo grep '\"*.zip\"' ${x3ls2} > redump-xbox360-s2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-s2.txt&&egrep -o '[^"]*"' redump-xbox360-s2.txt > 360iso_s2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_s2_db.txt > redump-xbox360-s2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-s2.txt > 360iso_s2_db.txt&&grep '\S' 360iso_s2_db.txt > redump-xbox360-s2.txt&&sed -i 's/\"//g' redump-xbox360-s2.txt&&cat redump-xbox360-s2.txt > 360iso_s2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-s2.txt > 360iso_s2_db.txt&&sed -i '1 i\#redump-xbox360-s2' 360iso_s2_db.txt&&sudo cp redump-xbox360-s2.txt 360iso_s2_dl.txt&&sudo rm -f ${x3ls2}&&sudo cp 360iso_s2_dl.txt 360iso_s2_single.txt&&cd ..&&sudo mkdir ${X3SS2};

    #XBOX 360 ISOs Readable List T
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mt"redump-xbox360-t-1_files.xml&&sudo grep '\"*.zip\"' ${x3lt} > redump-xbox360-t.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-t.txt&&egrep -o '[^"]*"' redump-xbox360-t.txt > 360iso_t_db.txt&&awk '{gsub("original\"", "");print}' 360iso_t_db.txt > redump-xbox360-t.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-t.txt > 360iso_t_db.txt&&grep '\S' 360iso_t_db.txt > redump-xbox360-t.txt&&sed -i 's/\"//g' redump-xbox360-t.txt&&cat redump-xbox360-t.txt > 360iso_t_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-t.txt > 360iso_t_db.txt&&sed -i '1 i\#redump-xbox360-t' 360iso_t_db.txt&&sudo cp redump-xbox360-t.txt 360iso_t_dl.txt&&sudo rm -f ${x3lt}&&sudo cp 360iso_t_dl.txt 360iso_t_single.txt&&cd ..&&sudo mkdir ${X3ST};

    #XBOX 360 ISOs Readable List T 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mt2"redump-xbox360-t-2_files.xml&&sudo grep '\"*.zip\"' ${x3lt2} > redump-xbox360-t2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-t2.txt&&egrep -o '[^"]*"' redump-xbox360-t2.txt > 360iso_t2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_t2_db.txt > redump-xbox360-t2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-t2.txt > 360iso_t2_db.txt&&grep '\S' 360iso_t2_db.txt > redump-xbox360-t2.txt&&sed -i 's/\"//g' redump-xbox360-t2.txt&&cat redump-xbox360-t2.txt > 360iso_t2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-t2.txt > 360iso_t2_db.txt&&sed -i '1 i\#redump-xbox360-t' 360iso_t2_db.txt&&sudo cp redump-xbox360-t2.txt 360iso_t2_dl.txt&&sudo rm -f ${x3lt2}&&sudo cp 360iso_t2_dl.txt 360iso_t2_single.txt&&cd ..&&sudo mkdir ${X3ST2};

    #XBOX 360 ISOs Readable List U
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mu"redump-xbox360-u_files.xml&&sudo grep '\"*.zip\"' ${x3lu} > redump-xbox360-u.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-u.txt&&egrep -o '[^"]*"' redump-xbox360-u.txt > 360iso_u_db.txt&&awk '{gsub("original\"", "");print}' 360iso_u_db.txt > redump-xbox360-u.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-u.txt > 360iso_u_db.txt&&grep '\S' 360iso_u_db.txt > redump-xbox360-u.txt&&sed -i 's/\"//g' redump-xbox360-u.txt&&cat redump-xbox360-u.txt > 360iso_u_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-u.txt > 360iso_u_db.txt&&sed -i '1 i\#redump-xbox360-u' 360iso_u_db.txt&&sudo cp redump-xbox360-u.txt 360iso_u_dl.txt&&sudo rm -f ${x3lu}&&sudo cp 360iso_u_dl.txt 360iso_u_single.txt&&cd ..&&sudo mkdir ${X3SU};

    #XBOX 360 ISOs Readable List V
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mv"redump-xbox360-v_files.xml&&sudo grep '\"*.zip\"' ${x3lv} > redump-xbox360-v.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-v.txt&&egrep -o '[^"]*"' redump-xbox360-v.txt > 360iso_v_db.txt&&awk '{gsub("original\"", "");print}' 360iso_v_db.txt > redump-xbox360-v.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-v.txt > 360iso_v_db.txt&&grep '\S' 360iso_v_db.txt > redump-xbox360-v.txt&&sed -i 's/\"//g' redump-xbox360-v.txt&&cat redump-xbox360-v.txt > 360iso_v_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-v.txt > 360iso_v_db.txt&&sed -i '1 i\#redump-xbox360-v' 360iso_v_db.txt&&sudo cp redump-xbox360-v.txt 360iso_v_dl.txt&&sudo rm -f ${x3lv}&&sudo cp 360iso_v_dl.txt 360iso_v_single.txt&&cd ..&&sudo mkdir ${X3SV};

    #XBOX 360 ISOs Readable List W
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mw"redump-xbox360-w_files.xml&&sudo grep '\"*.zip\"' ${x3lw} > redump-xbox360-w.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-w.txt&&egrep -o '[^"]*"' redump-xbox360-w.txt > 360iso_w_db.txt&&awk '{gsub("original\"", "");print}' 360iso_w_db.txt > redump-xbox360-w.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-w.txt > 360iso_w_db.txt&&grep '\S' 360iso_w_db.txt > redump-xbox360-w.txt&&sed -i 's/\"//g' redump-xbox360-w.txt&&cat redump-xbox360-w.txt > 360iso_w_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-w.txt > 360iso_w_db.txt&&sed -i '1 i\#redump-xbox360-w' 360iso_w_db.txt&&sudo cp redump-xbox360-w.txt 360iso_w_dl.txt&&sudo rm -f ${x3lw}&&sudo cp 360iso_w_dl.txt 360iso_w_single.txt&&cd ..&&sudo mkdir ${X3SW};

    #XBOX 360 ISOs Readable List X 1
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mx"redump-xbox360-x-1_files.xml&&sudo grep '\"*.zip\"' ${x3lx} > redump-xbox360-x.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-x.txt&&egrep -o '[^"]*"' redump-xbox360-x.txt > 360iso_x_db.txt&&awk '{gsub("original\"", "");print}' 360iso_x_db.txt > redump-xbox360-x.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-x.txt > 360iso_x_db.txt&&grep '\S' 360iso_x_db.txt > redump-xbox360-x.txt&&sed -i 's/\"//g' redump-xbox360-x.txt&&cat redump-xbox360-x.txt > 360iso_x_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-x.txt > 360iso_x_db.txt&&sed -i '1 i\#redump-xbox360-x' 360iso_x_db.txt&&sudo cp redump-xbox360-x.txt 360iso_x_dl.txt&&sudo rm -f ${x3lx}&&sudo cp 360iso_x_dl.txt 360iso_x_single.txt&&cd ..&&sudo mkdir ${X3SX};

    #XBOX 360 ISOs Readable List X 2
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mx2"redump-xbox360-x-2_files.xml&&sudo grep '\"*.zip\"' ${x3lx2} > redump-xbox360-x2.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-x2.txt&&egrep -o '[^"]*"' redump-xbox360-x2.txt > 360iso_x2_db.txt&&awk '{gsub("original\"", "");print}' 360iso_x2_db.txt > redump-xbox360-x2.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-x2.txt > 360iso_x2_db.txt&&grep '\S' 360iso_x2_db.txt > redump-xbox360-x2.txt&&sed -i 's/\"//g' redump-xbox360-x2.txt&&cat redump-xbox360-x2.txt > 360iso_x2_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-x2.txt > 360iso_x2_db.txt&&sed -i '1 i\#redump-xbox360-x2' 360iso_x2_db.txt&&sudo cp redump-xbox360-x2.txt 360iso_x2_dl.txt&&sudo rm -f ${x3lx2}&&sudo cp 360iso_x2_dl.txt 360iso_x2_single.txt&&cd ..&&sudo mkdir ${X3SX2};

    #XBOX 360 ISOs Readable List Y
    cd xbarchive/&&sudo wget -N "$ARCH""$x3my"redump-xbox360-y_files.xml&&sudo grep '\"*.zip\"' ${x3ly} > redump-xbox360-y.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-y.txt&&egrep -o '[^"]*"' redump-xbox360-y.txt > 360iso_y_db.txt&&awk '{gsub("original\"", "");print}' 360iso_y_db.txt > redump-xbox360-y.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-y.txt > 360iso_y_db.txt&&grep '\S' 360iso_y_db.txt > redump-xbox360-y.txt&&sed -i 's/\"//g' redump-xbox360-y.txt&&cat redump-xbox360-y.txt > 360iso_y_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-y.txt > 360iso_y_db.txt&&sed -i '1 i\#redump-xbox360-y' 360iso_y_db.txt&&sudo cp redump-xbox360-y.txt 360iso_y_dl.txt&&sudo rm -f ${x3ly}&&sudo cp 360iso_y_dl.txt 360iso_y_single.txt&&cd ..&&sudo mkdir ${X3SY};

    #XBOX 360 ISOs Readable List Z
    cd xbarchive/&&sudo wget -N "$ARCH""$x3mz"redump-xbox360-z_files.xml&&sudo grep '\"*.zip\"' ${x3lz} > redump-xbox360-z.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-z.txt&&egrep -o '[^"]*"' redump-xbox360-z.txt > 360iso_z_db.txt&&awk '{gsub("original\"", "");print}' 360iso_z_db.txt > redump-xbox360-z.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-z.txt > 360iso_z_db.txt&&grep '\S' 360iso_z_db.txt > redump-xbox360-z.txt&&sed -i 's/\"//g' redump-xbox360-z.txt&&cat redump-xbox360-z.txt > 360iso_z_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-z.txt > 360iso_z_db.txt&&sed -i '1 i\#redump-xbox360-z' 360iso_z_db.txt&&sudo cp redump-xbox360-z.txt 360iso_z_dl.txt&&sudo rm -f ${x3lz}&&sudo cp 360iso_z_dl.txt 360iso_z_single.txt&&cd ..&&sudo mkdir ${X3SZ};

    #XBOX 360 ISOs Readable List Numbers
    cd xbarchive/&&sudo wget -N "$ARCH""$n3m"redump-xbox360-numbers_files.xml&&sudo grep '\"*.zip\"' ${n3l} > redump-xbox360-numbers.txt&&sudo sed -i 's/.\{14\}//' redump-xbox360-numbers.txt&&egrep -o '[^"]*"' redump-xbox360-numbers.txt > 360iso_numbers_db.txt&&awk '{gsub("original\"", "");print}' 360iso_numbers_db.txt > redump-xbox360-numbers.txt&&awk '{gsub("source=\"", "");print}' redump-xbox360-numbers.txt > 360iso_numbers_db.txt&&grep '\S' 360iso_numbers_db.txt > redump-xbox360-numbers.txt&&sed -i 's/\"//g' redump-xbox360-numbers.txt&&cat redump-xbox360-numbers.txt > 360iso_numbers_db.txt&&awk '{printf("%01d %s\n", NR, $0)}' redump-xbox360-numbers.txt > 360iso_numbers_db.txt&&sed -i '1 i\#redump-xbox360-numbers' 360iso_numbers_db.txt&&sudo cp redump-xbox360-numbers.txt 360iso_numbers_dl.txt&&sudo rm -f ${n3l}&&sudo cp 360iso_numbers_dl.txt 360iso_numbers_single.txt&&cd ..&&sudo mkdir ${n3S};


  sub_menu9;
  sub_menu_admin;
;;

2) clear;
  option_picked "Download Single xbox360 ISO";
  sub_menu10;
  sub_menu_admin;
;;


3) clear;
  option_picked "Bulk Download xbox360-a-1 ISOs";
    awk '{ printf "redump-xbox360-a/"; print }' xbarchive/360iso_a_dl.txt > xbarchive/360iso_a_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_a_dl2.txt > xbarchive/360iso_a_dl.txt&&sudo rm -f xbarchive/360iso_a_dl2.txt&&sed -i '1 i\redump-xbox360-a' xbarchive/360iso_a_dl.txt&&sed -i '2d' xbarchive/360iso_a_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_a_dl.txt&&sudo rm -f xbarchive/360iso_a_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

4) clear;
  option_picked "Bulk Download xbox360-a-2 ISOs";
    awk '{ printf "redump-xbox360-a-2/"; print }' xbarchive/360iso_a2_dl.txt > xbarchive/360iso_a2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_a2_dl2.txt > xbarchive/360iso_a2_dl.txt&&sudo rm -f xbarchive/360iso_a2_dl2.txt&&sed -i '1 i\redump-xbox360-a-2' xbarchive/360iso_a2_dl.txt&&sed -i '2d' xbarchive/360iso_a2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_a2_dl.txt&&sudo rm -f xbarchive/360iso_a2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

5) clear;
  option_picked "Bulk Download xbox360-b-1 ISOs";
    awk '{ printf "redump-xbox360-b/"; print }' xbarchive/360iso_b_dl.txt > xbarchive/360iso_b_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_b_dl2.txt > xbarchive/360iso_b_dl.txt&&sudo rm -f xbarchive/360iso_b_dl2.txt&&sed -i '1 i\redump-xbox360-b' xbarchive/360iso_b_dl.txt&&sed -i '2d' xbarchive/360iso_b_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_b_dl.txt&&sudo rm -f xbarchive/360iso_b_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

6) clear;
  option_picked "Bulk Download xbox360-b-2 ISOs";
    awk '{ printf "redump-xbox360-b-2/"; print }' xbarchive/360iso_b2_dl.txt > xbarchive/360iso_b2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_b2_dl2.txt > xbarchive/360iso_b2_dl.txt&&sudo rm -f xbarchive/360iso_b2_dl2.txt&&sed -i '1 i\redump-xbox360-b-2' xbarchive/360iso_b2_dl.txt&&sed -i '2d' xbarchive/360iso_b2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_b2_dl.txt&&sudo rm -f xbarchive/360iso_b2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

7) clear;
  option_picked "Bulk Download xbox360-c-1 ISOs";
    awk '{ printf "redump-xbox360-c/"; print }' xbarchive/360iso_c_dl.txt > xbarchive/360iso_c_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_c_dl2.txt > xbarchive/360iso_c_dl.txt&&sudo rm -f xbarchive/360iso_c_dl2.txt&&sed -i '1 i\redump-xbox360-c' xbarchive/360iso_c_dl.txt&&sed -i '2d' xbarchive/360iso_c_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_c_dl.txt&&sudo rm -f xbarchive/360iso_c_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

8) clear;
  option_picked "Bulk Download xbox360-c-2 ISOs";
    awk '{ printf "redump-xbox360-c-2/"; print }' xbarchive/360iso_c2_dl.txt > xbarchive/360iso_c2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_c2_dl2.txt > xbarchive/360iso_c2_dl.txt&&sudo rm -f xbarchive/360iso_c2_dl2.txt&&sed -i '1 i\redump-xbox360-c-2' xbarchive/360iso_c2_dl.txt&&sed -i '2d' xbarchive/360iso_c2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_c2_dl.txt&&sudo rm -f xbarchive/360iso_c2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

9) clear;
  option_picked "Bulk Download xbox360-d ISOs";
    awk '{ printf "redump-xbox360-d-1/"; print }' xbarchive/360iso_d_dl.txt > xbarchive/360iso_d_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_d_dl2.txt > xbarchive/360iso_d_dl.txt&&sudo rm -f xbarchive/360iso_d_dl2.txt&&sed -i '1 i\redump-xbox360-d-1' xbarchive/360iso_d_dl.txt&&sed -i '2d' xbarchive/360iso_d_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_d_dl.txt&&sudo rm -f xbarchive/360iso_d_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

10) clear;
  option_picked "Bulk Download xbox360-d-2 ISOs";
    awk '{ printf "redump-xbox360-d--2/"; print }' xbarchive/360iso_d2_dl.txt > xbarchive/360iso_d2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_d2_dl2.txt > xbarchive/360iso_d2_dl.txt&&sudo rm -f xbarchive/360iso_d2_dl2.txt&&sed -i '1 i\redump-xbox360-d--2' xbarchive/360iso_d2_dl.txt&&sed -i '2d' xbarchive/360iso_d2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_d2_dl.txt&&sudo rm -f xbarchive/360iso_d2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

11) clear;
  option_picked "Bulk Download xbox360-e ISOs";
    awk '{ printf "redump-xbox360-e/"; print }' xbarchive/360iso_e_dl.txt > xbarchive/360iso_e_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_e_dl2.txt > xbarchive/360iso_e_dl.txt&&sudo rm -f xbarchive/360iso_e_dl2.txt&&sed -i '1 i\redump-xbox360-e' xbarchive/360iso_e_dl.txt&&sed -i '2d' xbarchive/360iso_e_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_e_dl.txt&&sudo rm -f xbarchive/360iso_e_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

12) clear;
  option_picked "Bulk Download xbox360-f-1 ISOs";
    awk '{ printf "redump-xbox360-f-1/"; print }' xbarchive/360iso_f_dl.txt > xbarchive/360iso_f_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_f_dl2.txt > xbarchive/360iso_f_dl.txt&&sudo rm -f xbarchive/360iso_f_dl2.txt&&sed -i '1 i\redump-xbox360-f-1' xbarchive/360iso_f_dl.txt&&sed -i '2d' xbarchive/360iso_f_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_f_dl.txt&&sudo rm -f xbarchive/360iso_f_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

13) clear;
  option_picked "Bulk Download xbox360-f-2 ISOs";
    awk '{ printf "redump-xbox360-f-2/"; print }' xbarchive/360iso_f2_dl.txt > xbarchive/360iso_f2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_f2_dl2.txt > xbarchive/360iso_f2_dl.txt&&sudo rm -f xbarchive/360iso_f2_dl2.txt&&sed -i '1 i\redump-xbox360-f-2' xbarchive/360iso_f2_dl.txt&&sed -i '2d' xbarchive/360iso_f2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_f2_dl.txt&&sudo rm -f xbarchive/360iso_f2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

14) clear;
  option_picked "Bulk Download xbox360-g ISOs";
    awk '{ printf "redump-xbox360-g/"; print }' xbarchive/360iso_g_dl.txt > xbarchive/360iso_g_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_g_dl2.txt > xbarchive/360iso_g_dl.txt&&sudo rm -f xbarchive/360iso_g_dl2.txt&&sed -i '1 i\redump-xbox360-g' xbarchive/360iso_g_dl.txt&&sed -i '2d' xbarchive/360iso_g_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_g_dl.txt&&sudo rm -f xbarchive/360iso_g_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

15) clear;
  option_picked "Bulk Download xbox360-h ISOs";
    awk '{ printf "redump-xbox360-h/"; print }' xbarchive/360iso_h_dl.txt > xbarchive/360iso_h_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_h_dl2.txt > xbarchive/360iso_h_dl.txt&&sudo rm -f xbarchive/360iso_h_dl2.txt&&sed -i '1 i\redump-xbox360-h' xbarchive/360iso_h_dl.txt&&sed -i '2d' xbarchive/360iso_h_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_h_dl.txt&&sudo rm -f xbarchive/360iso_h_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

16) clear;
  option_picked "Bulk Download xbox360-i ISOs";
    awk '{ printf "redump-xbox360-i/"; print }' xbarchive/360iso_i_dl.txt > xbarchive/360iso_i_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_i_dl2.txt > xbarchive/360iso_i_dl.txt&&sudo rm -f xbarchive/360iso_i_dl2.txt&&sed -i '1 i\redump-xbox360-i' xbarchive/360iso_i_dl.txt&&sed -i '2d' xbarchive/360iso_i_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_i_dl.txt&&sudo rm -f xbarchive/360iso_i_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

17) clear;
  option_picked "Bulk Download xbox360-j ISOs";
    awk '{ printf "redump-xbox360-j/"; print }' xbarchive/360iso_j_dl.txt > xbarchive/360iso_j_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_j_dl2.txt > xbarchive/360iso_j_dl.txt&&sudo rm -f xbarchive/360iso_j_dl2.txt&&sed -i '1 i\redump-xbox360-j' xbarchive/360iso_j_dl.txt&&sed -i '2d' xbarchive/360iso_j_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_j_dl.txt&&sudo rm -f xbarchive/360iso_j_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

18) clear;
  option_picked "Bulk Download xbox360-k ISOs";
    awk '{ printf "redump-xbox360-k/"; print }' xbarchive/360iso_k_dl.txt > xbarchive/360iso_k_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_k_dl2.txt > xbarchive/360iso_k_dl.txt&&sudo rm -f xbarchive/360iso_k_dl2.txt&&sed -i '1 i\redump-xbox360-k' xbarchive/360iso_k_dl.txt&&sed -i '2d' xbarchive/360iso_k_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_k_dl.txt&&sudo rm -f xbarchive/360iso_k_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

19) clear;
  option_picked "Bulk Download xbox360-l ISOs";
    awk '{ printf "redump-xbox360-l/"; print }' xbarchive/360iso_l_dl.txt > xbarchive/360iso_l_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_l_dl2.txt > xbarchive/360iso_l_dl.txt&&sudo rm -f xbarchive/360iso_l_dl2.txt&&sed -i '1 i\redump-xbox360-l' xbarchive/360iso_l_dl.txt&&sed -i '2d' xbarchive/360iso_l_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_l_dl.txt&&sudo rm -f xbarchive/360iso_l_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

20) clear;
  option_picked "Bulk Download xbox360-m-1 ISOs";
    awk '{ printf "redump-xbox360-m-1/"; print }' xbarchive/360iso_m_dl.txt > xbarchive/360iso_m_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_m_dl2.txt > xbarchive/360iso_m_dl.txt&&sudo rm -f xbarchive/360iso_m_dl2.txt&&sed -i '1 i\redump-xbox360-m-1' xbarchive/360iso_m_dl.txt&&sed -i '2d' xbarchive/360iso_m_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_m_dl.txt&&sudo rm -f xbarchive/360iso_m_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

21) clear;
  option_picked "Bulk Download xbox360-m-2 ISOs";
    awk '{ printf "redump-xbox360-m-2/"; print }' xbarchive/360iso_m2_dl.txt > xbarchive/360iso_m2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_m2_dl2.txt > xbarchive/360iso_m2_dl.txt&&sudo rm -f xbarchive/360iso_m2_dl2.txt&&sed -i '1 i\redump-xbox360-m-2' xbarchive/360iso_m2_dl.txt&&sed -i '2d' xbarchive/360iso_m2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_m2_dl.txt&&sudo rm -f xbarchive/360iso_m2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

22) clear;
  option_picked "Bulk Download xbox360-n ISOs";
    awk '{ printf "redump-xbox360-n/"; print }' xbarchive/360iso_n_dl.txt > xbarchive/360iso_n_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_n_dl2.txt > xbarchive/360iso_n_dl.txt&&sudo rm -f xbarchive/360iso_n_dl2.txt&&sed -i '1 i\redump-xbox360-n' xbarchive/360iso_a_dl.txt&&sed -i '2d' xbarchive/360iso_n_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_n_dl.txt&&sudo rm -f xbarchive/360iso_n_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

23) clear;
  option_picked "Bulk Download xbox360-o ISOs";
    awk '{ printf "redump-xbox360-o/"; print }' xbarchive/360iso_o_dl.txt > xbarchive/360iso_o_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_o_dl2.txt > xbarchive/360iso_o_dl.txt&&sudo rm -f xbarchive/360iso_o_dl2.txt&&sed -i '1 i\redump-xbox360-o' xbarchive/360iso_o_dl.txt&&sed -i '2d' xbarchive/360iso_o_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_o_dl.txt&&sudo rm -f xbarchive/360iso_o_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

24) clear;
  option_picked "Bulk Download xbox360-p ISOs";
    awk '{ printf "redump-xbox360-p/"; print }' xbarchive/360iso_p_dl.txt > xbarchive/360iso_p_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_p_dl2.txt > xbarchive/360iso_p_dl.txt&&sudo rm -f xbarchive/360iso_p_dl2.txt&&sed -i '1 i\redump-xbox360-p' xbarchive/360iso_p_dl.txt&&sed -i '2d' xbarchive/360iso_p_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_p_dl.txt&&sudo rm -f xbarchive/360iso_p_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

25) clear;
  option_picked "Bulk Download xbox360-q ISOs";
    awk '{ printf "redump-xbox360-q/"; print }' xbarchive/360iso_q_dl.txt > xbarchive/360iso_q_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_q_dl2.txt > xbarchive/360iso_q_dl.txt&&sudo rm -f xbarchive/360iso_q_dl2.txt&&sed -i '1 i\redump-xbox360-q' xbarchive/360iso_q_dl.txt&&sed -i '2d' xbarchive/360iso_q_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_q_dl.txt&&sudo rm -f xbarchive/360iso_q_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

26) clear;
  option_picked "Bulk Download xbox360-r ISOs";
    awk '{ printf "redump-xbox360-r/"; print }' xbarchive/360iso_r_dl.txt > xbarchive/360iso_r_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_r_dl2.txt > xbarchive/360iso_r_dl.txt&&sudo rm -f xbarchive/360iso_r_dl2.txt&&sed -i '1 i\redump-xbox360-r' xbarchive/360iso_r_dl.txt&&sed -i '2d' xbarchive/360iso_r_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_r_dl.txt&&sudo rm -f xbarchive/360iso_r_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

27) clear;
  option_picked "Bulk Download xbox360-s ISOs";
    awk '{ printf "redump-xbox360-s/"; print }' xbarchive/360iso_s_dl.txt > xbarchive/360iso_s_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_s_dl2.txt > xbarchive/360iso_s_dl.txt&&sudo rm -f xbarchive/360iso_s_dl2.txt&&sed -i '1 i\redump-xbox360-s' xbarchive/360iso_s_dl.txt&&sed -i '2d' xbarchive/360iso_s_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_s_dl.txt&&sudo rm -f xbarchive/360iso_s_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

28) clear;
  option_picked "Bulk Download xbox360-s-2 ISOs";
    awk '{ printf "redump-xbox360-s-2/"; print }' xbarchive/360iso_s2_dl.txt > xbarchive/360iso_s2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_s2_dl2.txt > xbarchive/360iso_s2_dl.txt&&sudo rm -f xbarchive/360iso_s2_dl2.txt&&sed -i '1 i\redump-xbox360-s-2' xbarchive/360iso_s2_dl.txt&&sed -i '2d' xbarchive/360iso_s2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_s2_dl.txt&&sudo rm -f xbarchive/360iso_s2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

29) clear;
  option_picked "Bulk Download xbox360-t-1 ISOs";
    awk '{ printf "redump-xbox360-t-1/"; print }' xbarchive/360iso_t_dl.txt > xbarchive/360iso_t_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_t_dl2.txt > xbarchive/360iso_t_dl.txt&&sudo rm -f xbarchive/360iso_t_dl2.txt&&sed -i '1 i\redump-xbox360-t-1' xbarchive/360iso_t_dl.txt&&sed -i '2d' xbarchive/360iso_t_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_t_dl.txt&&sudo rm -f xbarchive/360iso_t_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

30) clear;
  option_picked "Bulk Download xbox360-t-2 ISOs";
    awk '{ printf "redump-xbox360-t-2/"; print }' xbarchive/360iso_t2_dl.txt > xbarchive/360iso_t2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_t2_dl2.txt > xbarchive/360iso_t2_dl.txt&&sudo rm -f xbarchive/360iso_t2_dl2.txt&&sed -i '1 i\redump-xbox360-t-2' xbarchive/360iso_t2_dl.txt&&sed -i '2d' xbarchive/360iso_t2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_t2_dl.txt&&sudo rm -f xbarchive/360iso_t2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

31) clear;
  option_picked "Bulk Download xbox360-u ISOs";
    awk '{ printf "redump-xbox360-u/"; print }' xbarchive/360iso_u_dl.txt > xbarchive/360iso_u_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_u_dl2.txt > xbarchive/360iso_u_dl.txt&&sudo rm -f xbarchive/360iso_u_dl2.txt&&sed -i '1 i\redump-xbox360-u' xbarchive/360iso_u_dl.txt&&sed -i '2d' xbarchive/360iso_u_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_u_dl.txt&&sudo rm -f xbarchive/360iso_u_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

32) clear;
  option_picked "Bulk Download xbox360-v ISOs";
    awk '{ printf "redump-xbox360-v/"; print }' xbarchive/360iso_v_dl.txt > xbarchive/360iso_v_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_v_dl2.txt > xbarchive/360iso_v_dl.txt&&sudo rm -f xbarchive/360iso_v_dl2.txt&&sed -i '1 i\redump-xbox360-v' xbarchive/360iso_v_dl.txt&&sed -i '2d' xbarchive/360iso_v_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_v_dl.txt&&sudo rm -f xbarchive/360iso_v_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

33) clear;
  option_picked "Bulk Download xbox360-w ISOs";
    awk '{ printf "redump-xbox360-w/"; print }' xbarchive/360iso_w_dl.txt > xbarchive/360iso_w_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_w_dl2.txt > xbarchive/360iso_w_dl.txt&&sudo rm -f xbarchive/360iso_w_dl2.txt&&sed -i '1 i\redump-xbox360-w' xbarchive/360iso_w_dl.txt&&sed -i '2d' xbarchive/360iso_w_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_w_dl.txt&&sudo rm -f xbarchive/360iso_w_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

34) clear;
  option_picked "Bulk Download xbox360-x-1 ISOs";
    awk '{ printf "redump-xbox360-x-1/"; print }' xbarchive/360iso_x_dl.txt > xbarchive/360iso_x_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_x_dl2.txt > xbarchive/360iso_x_dl.txt&&sudo rm -f xbarchive/360iso_x_dl2.txt&&sed -i '1 i\redump-xbox360-x-1' xbarchive/360iso_x_dl.txt&&sed -i '2d' xbarchive/360iso_x_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_x_dl.txt&&sudo rm -f xbarchive/360iso_x_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

35) clear;
  option_picked "Bulk Download xbox360-x-2 ISOs";
    awk '{ printf "redump-xbox360-x-2/"; print }' xbarchive/360iso_x2_dl.txt > xbarchive/360iso_x2_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_x2_dl2.txt > xbarchive/360iso_x2_dl.txt&&sudo rm -f xbarchive/360iso_x2_dl2.txt&&sed -i '1 i\redump-xbox360-x-2' xbarchive/360iso_x2_dl.txt&&sed -i '2d' xbarchive/360iso_x2_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_x2_dl.txt&&sudo rm -f xbarchive/360iso_x2_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

36) clear;
  option_picked "Bulk Download xbox360-y ISOs";
    awk '{ printf "redump-xbox360-y/"; print }' xbarchive/360iso_y_dl.txt > xbarchive/360iso_y_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_y_dl2.txt > xbarchive/360iso_y_dl.txt&&sudo rm -f xbarchive/360iso_y_dl2.txt&&sed -i '1 i\redump-xbox360-y' xbarchive/360iso_y_dl.txt&&sed -i '2d' xbarchive/360iso_y_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_y_dl.txt&&sudo rm -f xbarchive/360iso_y_dl.txt;
  sub_menu9;
  sub_menu_admin;

;;

37) clear;
  option_picked "Bulk Download xbox360-z ISOs";
    awk '{ printf "redump-xbox360-z/"; print }' xbarchive/360iso_z_dl.txt > xbarchive/360iso_z_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_z_dl2.txt > xbarchive/360iso_z_dl.txt&&sudo rm -f xbarchive/360iso_z_dl2.txt&&sed -i '1 i\redump-xbox360-z' xbarchive/360iso_z_dl.txt&&sed -i '2d' xbarchive/360iso_z_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_z_dl.txt&&sudo rm -f xbarchive/360iso_z_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

38) clear;
  option_picked "Bulk Download xbox360-numbers ISOs";
    awk '{ printf "redump-xbox360-numbers/"; print }' xbarchive/360iso_numbers_dl.txt > xbarchive/360iso_numbers_dl2.txt&&awk '{ printf "https://archive.org/download/"; print }' xbarchive/360iso_numbers_dl2.txt > xbarchive/360iso_numbers_dl.txt&&sudo rm -f xbarchive/360iso_numbers_dl2.txt&&sed -i '1 i\redump-xbox360-numbers' xbarchive/360iso_numbers_dl.txt&&sed -i '2d' xbarchive/360iso_numbers_dl.txt&&./xbarchive/aria2files.sh xbarchive/360iso_numbers_dl.txt&&sudo rm -f xbarchive/360iso_numbers_dl.txt;
  sub_menu9;
  sub_menu_admin;
;;

39) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
option_picked "Pick an option from the menu";
sub_menu1;
;;
esac
fi
done
}

#Single 360 ISO download
#XBOX 360 Sub Menu 10
option_picked() {
  COLOR='\033[01;31m' # bold red
  RESET='\033[00;00m' # normal white
  MESSAGE=${@:-"${RESET}Error: No message passed"}
  echo "${COLOR}${MESSAGE}${RESET}"
}

sub_menu10(){
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
printf "Option 1) Return To Xbox 360 Bulk Download Menu\n"
printf "Option 2) Download Single XBOX 360 ISO From List (A)\n"
printf "Option 3) Download Single XBOX 360 ISO From List (A 2)\n"
printf "Option 4) Download Single XBOX 360 ISO From List (B)\n"
printf "Option 5) Download Single XBOX 360 ISO From List (B 2)\n"
printf "Option 6) Download Single XBOX 360 ISO From List (C)\n"
printf "Option 7) Download Single XBOX 360 ISO From List (C 2)\n"
printf "Option 8) Download Single XBOX 360 ISO From List (D)\n"
printf "Option 9) Download Single XBOX 360 ISO From List (D 2)\n"
printf "Option 10) Download Single XBOX 360 ISO From List (E)\n"
printf "Option 11) Download Single XBOX 360 ISO From List (F)\n"
printf "Option 12) Download Single XBOX 360 ISO From List (F 2)\n"
printf "Option 13) Download Single XBOX 360 ISO From List (G)\n"
printf "Option 14) Download Single XBOX 360 ISO From List (H)\n"
printf "Option 15) Download Single XBOX 360 ISO From List (I)\n"
printf "Option 16) Download Single XBOX 360 ISO From List (J)\n"
printf "Option 17) Download Single XBOX 360 ISO From List (K)\n"
printf "Option 18) Download Single XBOX 360 ISO From List (L)\n"
printf "Option 19) Download Single XBOX 360 ISO From List (M)\n"
printf "Option 20) Download Single XBOX 360 ISO From List (M 2)\n"
printf "Option 21) Download Single XBOX 360 ISO From List (N)\n"
printf "Option 22) Download Single XBOX 360 ISO From List (N 2)\n"
printf "Option 23) Download Single XBOX 360 ISO From List (O)\n"
printf "Option 24) Download Single XBOX 360 ISO From List (P)\n"
printf "Option 25) Download Single XBOX 360 ISO From List (Q)\n"
printf "Option 26) Download Single XBOX 360 ISO From List (R)\n"
printf "Option 27) Download Single XBOX 360 ISO From List (S)\n"
printf "Option 28) Download Single XBOX 360 ISO From List (S 2)\n"
printf "Option 29) Download Single XBOX 360 ISO From List (T)\n"
printf "Option 30) Download Single XBOX 360 ISO From List (T 2)\n"
printf "Option 31) Download Single XBOX 360 ISO From List (U)\n"
printf "Option 32) Download Single XBOX 360 ISO From List (V)\n"
printf "Option 33) Download Single XBOX 360 ISO From List (W)\n"
printf "Option 34) Download Single XBOX 360 ISO From List (X)\n"
printf "Option 35) Download Single XBOX 360 ISO From List (X 2)\n"
printf "Option 36) Download Single XBOX 360 ISO From List (Y)\n"
printf "Option 37) Download Single XBOX 360 ISO From List (Z)\n"
printf "Option 38) Download Single XBOX 360 ISO From List (Numbers)\n"
printf "Option 39) Will Exit to Menu\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${menu}**${number} 1)${menu} Return To Xbox 360 Bulk Download Menu${normal}\n"
printf "${menu}**${number} 2)${menu} Download Single XBOX 360 ISO From List (A)${normal}\n"
printf "${menu}**${number} 3)${menu} Download Single XBOX 360 ISO From List (A 2)${normal}\n"
printf "${menu}**${number} 4)${menu} Download Single XBOX 360 ISO From List (B)${normal}\n"
printf "${menu}**${number} 5)${menu} Download Single XBOX 360 ISO From List (B 2)${normal}\n"
printf "${menu}**${number} 6)${menu} Download Single XBOX 360 ISO From List (C)${normal}\n"
printf "${menu}**${number} 7)${menu} Download Single XBOX 360 ISO From List (C 2)${normal}\n"
printf "${menu}**${number} 8)${menu} Download Single XBOX 360 ISO From List (D)${normal}\n"
printf "${menu}**${number} 9)${menu} Download Single XBOX 360 ISO From List (D 2)${normal}\n"
printf "${menu}**${number} 10)${menu} Download Single XBOX 360 ISO From List (E)${normal}\n"
printf "${menu}**${number} 11)${menu} Download Single XBOX 360 ISO From List (F)${normal}\n"
printf "${menu}**${number} 12)${menu} Download Single XBOX 360 ISO From List (F 2)${normal}\n"
printf "${menu}**${number} 13)${menu} Download Single XBOX 360 ISO From List (G)${normal}\n"
printf "${menu}**${number} 14)${menu} Download Single XBOX 360 ISO From List (H)${normal}\n"
printf "${menu}**${number} 15)${menu} Download Single XBOX 360 ISO From List (I)${normal}\n"
printf "${menu}**${number} 16)${menu} Download Single XBOX 360 ISO From List (J)${normal}\n"
printf "${menu}**${number} 17)${menu} Download Single XBOX 360 ISO From List (K)${normal}\n"
printf "${menu}**${number} 18)${menu} Download Single XBOX 360 ISO From List (L)${normal}\n"
printf "${menu}**${number} 19)${menu} Download Single XBOX 360 ISO From List (M)${normal}\n"
printf "${menu}**${number} 20)${menu} Download Single XBOX 360 ISO From List (M 2)${normal}\n"
printf "${menu}**${number} 21)${menu} Download Single XBOX 360 ISO From List (N)${normal}\n"
printf "${menu}**${number} 22)${menu} Download Single XBOX 360 ISO From List (N 2)${normal}\n"
printf "${menu}**${number} 23)${menu} Download Single XBOX 360 ISO From List (O)${normal}\n"
printf "${menu}**${number} 24)${menu} Download Single XBOX 360 ISO From List (P)${normal}\n"
printf "${menu}**${number} 25)${menu} Download Single XBOX 360 ISO From List (Q)${normal}\n"
printf "${menu}**${number} 26)${menu} Download Single XBOX 360 ISO From List (R)${normal}\n"
printf "${menu}**${number} 27)${menu} Download Single XBOX 360 ISO From List (S)${normal}\n"
printf "${menu}**${number} 28)${menu} Download Single XBOX 360 ISO From List (S 2)${normal}\n"
printf "${menu}**${number} 29)${menu} Download Single XBOX 360 ISO From List (T)${normal}\n"
printf "${menu}**${number} 30)${menu} Download Single XBOX 360 ISO From List (T 2)${normal}\n"
printf "${menu}**${number} 31)${menu} Download Single XBOX 360 ISO From List (U)${normal}\n"
printf "${menu}**${number} 32)${menu} Download Single XBOX 360 ISO From List (V)${normal}\n"
printf "${menu}**${number} 33)${menu} Download Single XBOX 360 ISO From List (W)${normal}\n"
printf "${menu}**${number} 34)${menu} Download Single XBOX 360 ISO From List (X)${normal}\n"
printf "${menu}**${number} 35)${menu} Download Single XBOX 360 ISO From List (X 2)${normal}\n"
printf "${menu}**${number} 36)${menu} Download Single XBOX 360 ISO From List (Y)${normal}\n"
printf "${menu}**${number} 37)${menu} Download Single XBOX 360 ISO From List (Z)${normal}\n"
printf "${menu}**${number} 38)${menu} Download Single XBOX 360 ISO From List (Numbers)${normal}\n"
printf "${menu}**${number} 39)${menu} Exit To Main Menu ${normal}\n\n"
printf "${menu}*********************************************${normal}\n"
printf "${ENTER_LINE}Please enter a menu option and enter ${normal}\n"

read sub10
while [ sub10 != '' ]
do
if [[ $sub10 = "" ]]; then
exit;
else
case $sub10 in

1) clear;
  sub_menu9;
  sub_menu_admin;
;;

2)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List A";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_a_single.txt xbarchive/360iso_a_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_a_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_a_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_a_single2.txt
    sudo cat xbarchive/360iso_a_db.txt
    count="$(wc -l xbarchive/360iso_a_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_a_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_a_single https://archive.org/download/redump-xbox360-a/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


3)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List A-2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_a2_single.txt xbarchive/360iso_a2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_a2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_a2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_a2_single2.txt
    sudo cat xbarchive/360iso_a2_db.txt
    count="$(wc -l xbarchive/360iso_a2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_a2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_a2_single https://archive.org/download/redump-xbox360-a-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


4)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List B";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_b_single.txt xbarchive/360iso_b_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_b_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_b_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_b_single2.txt
    sudo cat xbarchive/360iso_b_db.txt
    count="$(wc -l xbarchive/360iso_b_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_b_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_b_single https://archive.org/download/redump-xbox360-b/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


5)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List B 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_b2_single.txt xbarchive/360iso_b2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_b2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_b2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_b2_single2.txt
    sudo cat xbarchive/360iso_b2_db.txt
    count="$(wc -l xbarchive/360iso_b2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_b2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_b2_single https://archive.org/download/redump-xbox360-b-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


6)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List C";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_c_single.txt xbarchive/360iso_c_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_c_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_c_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_c_single2.txt
    sudo cat xbarchive/360iso_c_db.txt
    count="$(wc -l xbarchive/360iso_c_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_c_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_c_single https://archive.org/download/redump-xbox360-c/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


7)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List C 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_c2_single.txt xbarchive/360iso_c2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_c_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_c_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_c_single2.txt
    sudo cat xbarchive/360iso_c2_db.txt
    count="$(wc -l xbarchive/360iso_c2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_c2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_c2_single https://archive.org/download/redump-xbox360-c-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


8)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List D";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_d_single.txt xbarchive/360iso_d_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_d_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_d_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_d_single2.txt
    sudo cat xbarchive/360iso_d_db.txt
    count="$(wc -l xbarchive/360iso_d_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_d_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_d_single https://archive.org/download/redump-xbox360-d-1/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


9)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List D 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_d2_single.txt xbarchive/360iso_d2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_d2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_d2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_d2_single2.txt
    sudo cat xbarchive/360iso_d2_db.txt
    count="$(wc -l xbarchive/360iso_d2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_d2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_d2_single https://archive.org/download/redump-xbox360-d--2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


10)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List E";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_e_single.txt xbarchive/360iso_e_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_e_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_e_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_e_single2.txt
    sudo cat xbarchive/360iso_e_db.txt
    count="$(wc -l xbarchive/360iso_e_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_e_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_e_single https://archive.org/download/redump-xbox360-e/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


11)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List F";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_f_single.txt xbarchive/360iso_f_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_f_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_f_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_f_single2.txt
    sudo cat xbarchive/360iso_f_db.txt
    count="$(wc -l xbarchive/360iso_f_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_f_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_f_single https://archive.org/download/redump-xbox360-f-1/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


12)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List F 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_f2_single.txt xbarchive/360iso_f2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_f2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_f2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_f2_single2.txt
    sudo cat xbarchive/360iso_f2_db.txt
    count="$(wc -l xbarchive/360iso_f2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_f2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_f2_single https://archive.org/download/redump-xbox360-f-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


13)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List G";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_g_single.txt xbarchive/360iso_g_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_g_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_g_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_g_single2.txt
    sudo cat xbarchive/360iso_g_db.txt
    count="$(wc -l xbarchive/360iso_g_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_g_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_g_single https://archive.org/download/redump-xbox360-g/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


14)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List H";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_h_single.txt xbarchive/360iso_h_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_h_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_h_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_h_single2.txt
    sudo cat xbarchive/360iso_h_db.txt
    count="$(wc -l xbarchive/360iso_h_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_h_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_h_single https://archive.org/download/redump-xbox360-h/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


15)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List I";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_i_single.txt xbarchive/360iso_i_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_i_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_i_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_i_single2.txt
    sudo cat xbarchive/360iso_i_db.txt
    count="$(wc -l xbarchive/360iso_i_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_i_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_i_single https://archive.org/download/redump-xbox360-i/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


16)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List J";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_j_single.txt xbarchive/360iso_j_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_j_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_j_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_j_single2.txt
    sudo cat xbarchive/360iso_j_db.txt
    count="$(wc -l xbarchive/360iso_j_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_j_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_j_single https://archive.org/download/redump-xbox360-j/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


17)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List K";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_k_single.txt xbarchive/360iso_k_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_k_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_k_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_k_single2.txt
    sudo cat xbarchive/360iso_k_db.txt
    count="$(wc -l xbarchive/360iso_k_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_k_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_k_single https://archive.org/download/redump-xbox360-k/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


18)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List L";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_l_single.txt xbarchive/360iso_l_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_l_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_l_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_l_single2.txt
    sudo cat xbarchive/360iso_l_db.txt
    count="$(wc -l xbarchive/360iso_l_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_l_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_l_single https://archive.org/download/redump-xbox360-l/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


19)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List M";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_m_single.txt xbarchive/360iso_m_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_m_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_m_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_m_single2.txt
    sudo cat xbarchive/360iso_m_db.txt
    count="$(wc -l xbarchive/360iso_m_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_m_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_m_single https://archive.org/download/redump-xbox360-m-1/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


20)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List M 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_m2_single.txt xbarchive/360iso_m2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_m2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_m2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_m2_single2.txt
    sudo cat xbarchive/360iso_m2_db.txt
    count="$(wc -l xbarchive/360iso_m2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_m2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_m2_single https://archive.org/download/redump-xbox360-m-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


21)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List N";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_n_single.txt xbarchive/360iso_n_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_n_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_n_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_n_single2.txt
    sudo cat xbarchive/360iso_n_db.txt
    count="$(wc -l xbarchive/360iso_n_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_n_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_n_single https://archive.org/download/redump-xbox360-n/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


22)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List N 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_n2_single.txt xbarchive/360iso_n2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_n2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_n2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_n2_single2.txt
    sudo cat xbarchive/360iso_n2_db.txt
    count="$(wc -l xbarchive/360iso_n2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_n2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_n2_single https://archive.org/download/redump-xbox360-n-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


23)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List O";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_o_single.txt xbarchive/360iso_o_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_o_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_o_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_o_single2.txt
    sudo cat xbarchive/360iso_o_db.txt
    count="$(wc -l xbarchive/360iso_o_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_o_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_o_single https://archive.org/download/redump-xbox360-o/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


24)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List P";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_p_single.txt xbarchive/360iso_p_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_p_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_p_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_p_single2.txt
    sudo cat xbarchive/360iso_p_db.txt
    count="$(wc -l xbarchive/360iso_p_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_p_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_p_single https://archive.org/download/redump-xbox360-p/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


25)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List Q";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_q_single.txt xbarchive/360iso_q_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_q_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_q_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_q_single2.txt
    sudo cat xbarchive/360iso_q_db.txt
    count="$(wc -l xbarchive/360iso_q_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_q_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_q_single https://archive.org/download/redump-xbox360-q/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


26)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List R";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_r_single.txt xbarchive/360iso_r_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_r_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_r_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_r_single2.txt
    sudo cat xbarchive/360iso_r_db.txt
    count="$(wc -l xbarchive/360iso_r_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_r_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_r_single https://archive.org/download/redump-xbox360-r/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


27)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List S";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_s_single.txt xbarchive/360iso_s_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_s_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_s_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_s_single2.txt
    sudo cat xbarchive/360iso_s_db.txt
    count="$(wc -l xbarchive/360iso_s_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_s_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_s_single https://archive.org/download/redump-xbox360-s/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


28)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List S 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_s2_single.txt xbarchive/360iso_s2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_s2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_s2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_s2_single2.txt
    sudo cat xbarchive/360iso_s2_db.txt
    count="$(wc -l xbarchive/360iso_s2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_s2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_s2_single https://archive.org/download/redump-xbox360-s-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


29)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List T";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_t_single.txt xbarchive/360iso_t_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_t_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_t_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_t_single2.txt
    sudo cat xbarchive/360iso_t_db.txt
    count="$(wc -l xbarchive/360iso_t_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_t_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_t_single https://archive.org/download/redump-xbox360-t-1/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


30)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List T 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_t2_single.txt xbarchive/360iso_t2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_t2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_t2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_t2_single2.txt
    sudo cat xbarchive/360iso_t2_db.txt
    count="$(wc -l xbarchive/360iso_t2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_t2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_t2_single https://archive.org/download/redump-xbox360-t-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


31)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List U";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_u_single.txt xbarchive/360iso_u_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_u_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_u_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_u_single2.txt
    sudo cat xbarchive/360iso_u_db.txt
    count="$(wc -l xbarchive/360iso_u_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_u_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_u_single https://archive.org/download/redump-xbox360-u/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


32)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List V";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_v_single.txt xbarchive/360iso_v_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_v_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_v_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_v_single2.txt
    sudo cat xbarchive/360iso_v_db.txt
    count="$(wc -l xbarchive/360iso_v_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_v_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_u_single https://archive.org/download/redump-xbox360-v/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


33)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List W";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_w_single.txt xbarchive/360iso_w_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_w_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_w_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_w_single2.txt
    sudo cat xbarchive/360iso_w_db.txt
    count="$(wc -l xbarchive/360iso_w_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_w_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_w_single https://archive.org/download/redump-xbox360-w/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


34)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List X";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_x_single.txt xbarchive/360iso_x_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_x_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_x_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_x_single2.txt
    sudo cat xbarchive/360iso_x_db.txt
    count="$(wc -l xbarchive/360iso_x_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_x_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_x_single https://archive.org/download/redump-xbox360-x-1/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


35)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List X 2";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_x2_single.txt xbarchive/360iso_x2_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_x2_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_x2_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_x2_single2.txt
    sudo cat xbarchive/360iso_x2_db.txt
    count="$(wc -l xbarchive/360iso_x2_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_x2_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_x2_single https://archive.org/download/redump-xbox360-x-2/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


36)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List Y";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_y_single.txt xbarchive/360iso_y_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_y_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_y_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_y_single2.txt
    sudo cat xbarchive/360iso_y_db.txt
    count="$(wc -l xbarchive/360iso_y_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_y_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_y_single https://archive.org/download/redump-xbox360-y/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


37)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List Z";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_z_single.txt xbarchive/360iso_z_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_z_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_z_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_z_single2.txt
    sudo cat xbarchive/360iso_z_db.txt
    count="$(wc -l xbarchive/360iso_z_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_z_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_z_single https://archive.org/download/redump-xbox360-z/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;


38)  clear;
  option_picked "Dowload Single XBOX 360 ISO From List Numbers";
    echo "Enter Game Number From the List";
    ARCH360="https://archive.org/download/"
    sudo cp xbarchive/360iso_numbers_single.txt xbarchive/360iso_numbers_single2.txt
    sudo sed -i 's/ /%20/g' xbarchive/360iso_numbers_single2.txt
    sudo sed -i 's/(/%28/g' xbarchive/360iso_numbers_single2.txt
    sudo sed -i 's/)/%29/g' xbarchive/360iso_numbers_single2.txt
    sudo cat xbarchive/360iso_numbers_db.txt
    count="$(wc -l xbarchive/360iso_numbers_single.txt | cut -f 1 -d' ')"
    n=""
    while true; do
    read -p 'Select option: ' n
    if [ "$n" -eq "$n" ] && [ "$n" -gt 0 ] && [ "$n" -le "$count" ]; then
    break
    fi
    done
    valuex="$(sed -n "${n}p" xbarchive/360iso_numbers_single2.txt)"
    #dlgamex="$ARCH360$x3m$valuex"
    sudo aria2c --file-allocation=none -c -x 10 -s 10 -d 360iso_numbers_single https://archive.org/download/redump-xbox360-numbers/$valuex
    echo "The user selected option number $n: '$valuex'"
  sub_menu10;
  sub_menu_admin;
;;

39) clear;
  option_picked "Exit To Main Menu";
  show_menu;
  sub_menu_admin;
;;

x) exit;
;;

\n) exit;
;;

*) clear;
  option_picked "Pick an option from the menu";
  sub_menu1;
;;
esac
fi
done
}











clear
show_menu

trap 'rm -Rf xbarchive/' INT
trap 'rm -Rf xbarchive/' EXIT




