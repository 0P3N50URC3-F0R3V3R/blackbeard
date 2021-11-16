# BlackBeard Event Emulator
This is an OpenSource project for the game 
DEEP ROCK GALACTIC - DEEPDIVE, ASSIGNMENT AND EVENT EMULATOR


Currently Supported platform: Windows only.
At the moment i am looking for people who is able to help me to 
compile this to Linux debian or ubuntu or Raspbian Buster!

# Introduction
Supported clients: up to Update 35(Season one)

An Opensource offline working deep rock galactic - deepdive and weekly assignments 
emulator and assignment scheduler written in LAZARUS IDE pascal.

Okay so i made an offline working DeepDive and weekly assigment "emulator" (it is very bold to call it emulator, lets just call it "bypass" or "mimcking" or what... :D :P)
Basicly; its mimicks the events and deepdive missions like in original; but in offline mode thru a XAMPP apache server and a self signed cert file... that is good for us;
since the game does not allow you to play offline assigments/dives if you dont have active internet connection... But i made a so called solution, with LAN only mode true offline. Also you can change anytime the mission seeds for your taste, if you dont like what you see.on the assignment panel.

# Here is what is working with this(so far):
- Deepdives,
- Daily Assignments,
- Weekly Assignments,
- Free beer events, ect ect.
- Main Events like Halloween Xmas, ect

# Here is what is not working yet:
- Community part is not working yet. It might never will.

On lan you can share with other players your xampp deepdive server IP adresses to see the same missions... 
THIS IS A PROTOTYPE SO IT NEEDS SOME FIDDLING AROUND!! But it is fairly stable.

# Good to know: 
- Weekly assignments requires level 8 character.
- Also for deep diving you will neet at least a level 25 character!!!

# Here is how to use this tool:

0. Dowload my archive from here.  you will need a working http server for this.

1. Extract the archive to one hdd/ssd drive root to look like this c:\DeepDiveEmu_xampp\BlackBeard.exe

2. Edit your hosts file, and add theese lines(edit 127.0.0.1 to the LAN ip adress to your machine)
All clients who will connect to you needs to give your web server's lan IP to here to everyone connect to your "event manager" server.
The game REQUIRES to use ports 443 and 8443

127.0.0.1 services.ghostship.dk
127.0.0.1 api.stathat.com

3. Start xampp_control.exe and start apache. It will use only 2 ports: 443 and 8443 if you cannot start it you might have a program that uses those ports...

4. Since this is a https secure connection; You need to add the cert file in your system to make the pc accept the self signed cert file. Its valid until 2031.07...
this step is requied to every host and client on lan.. if you are not doing this your game will not be able to use your local https webserver to download your
settings SO: in the folder there is a server.cert file click on it and press install certificate button, and add for local machine, and select
container add the certificate file(server.cert) to : "Trusted Root Certification Authorities"

5. You can start blackbeard.exe now. Change as your see fit chenge seeds, change times, weekly assignment seeds, 
6. Check around other files, there are plenty things that you can change, there is free beer and expiration time 
7. ect ect, and other unknown things, you can play around with this a lot...

6. Start The game and play on normal or deepdive expeditions, and you can change them as you see fit.
(The latest game for me in DX12 was crashed constantly so i did stick with dx11 start the game with -dx11)

NOTE: This is strictly experimental and educational and offline gaming purposes so it might work or 
might not in the future....

# Troubleshooting
If you get a red message on the deep dive panels, you need to add the cert file again
(both local user and local machine, highest container priority or what), restart machine, and try again the process.

#Legal things and disclaimer
This program is written entire in Lazarus IDE and not using ANY code from the original game, its just a tool. This code is perfectly legal undrt the MIT license!

With the usage, you are accepting that i am *not* responsible for any harm that comes to your account or freetime or any thing that comes from using this program. In theory this is perfectly safe to use, but i am not responsible for your mistakes. If you have doubt of this then do not use it. This is for Strictly educational purposes and thats it.

Rocks and Stones!
The webserver uses "443" and "8443" ports. it might be occupied so it is up to you what is using it if you cannot start apache, sorry.

# LFG - FOR LINUX VERSION
Currently looking for people who is able to help me to compile this to Linux debian or ubuntu or Raspbian Buster!
