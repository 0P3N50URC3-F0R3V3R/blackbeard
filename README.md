# BlackBeard Event Emulator
This is an OpenSource project for the game 
DEEP ROCK GALACTIC - DEEPDIVE, ASSIGNMENT AND EVENT EMULATOR


Currently Supported platform: Windows, or linux(Tested on Raspberry Buster, debian and ubuntu) only. You need to compile it yourself though.
For the linux it does not need any big deal it will work on any pascal compiler and on an apache2 server(you need to add the fake cert manually though)

# Introduction
Supported clients: up to Update 35(Season one)Patch 3
# YOU NEED SYSTEM ADMINISTRATOR ACCOUNT ON WINDOWS(TRUE ADMIN) OR BLACKBEARD PROGRAM WILL NO WORK WELL(IT WONT HAVE WRITE ACCESS!)

An Opensource offline working deep rock galactic - deepdive and weekly assignments 
emulator and assignment scheduler written in LAZARUS IDE pascal.

This is an offline working DeepDive and weekly assigment "emulator" (it is very bold to call it emulator, lets just call it "bypass" or "mimcking" or what... :D :P)
Basicly; its mimicks the events and deepdive missions like in original; but in offline mode thru a XAMPP apache server and a self signed cert file... that is good for us;
since the game does not allow you to play offline assigments/dives if you dont have active internet connection... But i made a so called solution, with LAN only mode true offline. Also you can change anytime the mission seeds for your taste, if you dont like what you see.on the assignment panel.

# Here is what is working with this(so far):
- Random generated DeepDives,
- Official DeepDives up to: V1.37.84154.0 Master Edition. 
- Daily Assignments,
- Weekly Assignments,
- Free beer events, ect ect.
- Main Events like Halloween Xmas, ect

#NOT ALL EVENTS WORKING WITH THE LATEST VERSION FOR SOME EVENTS, - ESPECIALLY FOR OLDER ONES - YOU WILL NEED TO GET OLDER CLIENT VERSIONS FROM STEAM MANIFESTS!! NOT WORKING WITH ALL, BLACKBEARD IS UNIVERSAL IN THIS MANNER.

# Here is what is not working yet:
- Community part is not working yet. It might never will.
- On lan you might want to share with other players your xampp deepdive server IP adresses to see the same missions... 

# Good to know: 
- Weekly assignments requires level 8 character This is the BLUE level indicator NOT THE RED!.
- Weekly assignments WONT BE VISIBLE until you reach level 8. Until then just premade assignments visible.
- For get into deep diving you will need at least a level 25 character!!!
- ALWAYS START THE BLACKBEARD PROGRAM WITH SYSTEM ADMIN RIGHTS IN WINDOWS! OTHERWISE THE PROGRAM WONT BE ABLE TO SAVE/WRITE ON YOUR DISK YOUR FILE!
- YOU NEED TO SET THE DATE TO YOURSELF! The program wont select to you new dates.

# WARNING! IF YOU HAVE ACTIVE WINDOWS DEFENDER YOU NEED TO EDIT THE HOSTS FILE MANUALLY!!!! IT WONT WORK FROM THE PROGRAM! FROM BLACKBEARD ONLY WORKS WITH DISABLED WINDOWS DEFENDER!

# Here is how to use this tool:

The latest game for me in DX12 was crashed constantly so i did stick with dx11 start the game with -dx11 parameter.

NOTE: This is strictly experimental and educational and offline gaming purposes so it might work or 
might not in the future....

1. Download the package, and extract it.
2. Run Blackbeard exe and in programs menu run install fake certs, and XAMPP setup.
3. Open XAMPP control panel, manually or eigher from blackbeard.
4. Either run install_certs_and_hosts.bat or open hosts file, and add to the bottom this two lines:
127.0.0.1 drg.ghostship.dk
127.0.0.1 services.ghostship.dk
5. Start up xampp web server, make sure ports 443 and 8443 are works.
6. You can setup further configurations in Blackbeard.
7. Start game and have fun! It works in multiplayer mode!


# Troubleshooting
If you get a red message on the deep dive panels, you need to add the cert file again
(both local user and local machine, highest container priority or what), restart machine, and try again the process.

# Legal things and disclaimer
This program is written entire in Lazarus IDE and not using ANY code from the original game, its just a tool. This code is perfectly legal undrt the GPL license!

With the usage, you are accepting that i am *not* responsible for any harm that comes to your account or freetime or any thing that comes from using this program. In theory this is perfectly safe to use, but i am not responsible for your mistakes. If you have doubt of this then do not use it. This is for Strictly educational purposes and thats it.

Rocks and Stones!
The webserver uses "443" and "8443" ports. it might be occupied so it is up to you what is using it if you cannot start apache, sorry.
