#! /bin/bash
user=''
password=''
/root/steamcmd.sh +force_install_dir /root/arma3/ +login $user $password +app_update 233780 validate +quit
mkdir -p ~/".local/share/Arma 3" && mkdir -p ~/".local/share/Arma 3 - Other Profiles"