# xbarchive
archive.org links

This is a helper tool to access Archive.org files
This is early in build so its pretty basic.
It will allow you to get xbox stuff in bulk from archive.org

This will download Redump games from Archive.org at an average speed of 5-6MBs and uses multithreaded downloading and avoid rate limiting.

This program also has a resume feature. It will allow you to continue bulk downloads or single downloads if your internet connection is interrupted or errors

You will need ubuntu or deb based linux or Windows Subsystem Linux but you will need to install that yourself.

HowTo:

    git clone https://github.com/codemasterv/xbarchive.git

    cd xbarchive
    
    sudo chmod +x mogi_xbox.sh
    
    sh mogi_xbox.sh
    
Select a number 0-8 and hit enter. 

**HINT: You need to hit 0 first to download all needed tools and files**

Option 1 will download and build the Super Mario 64 Xbox Port.

If you run into download errors run option 7 to remove old DB files and under the console you want to download for redownload the DB files

The program will create a directory in the xbarchive folder and download the games in the created directory.

Option 8 will remove all folders/ games/ scripts




![Capture](https://github.com/codemasterv/xbarchive/blob/master/Capture.PNG)
