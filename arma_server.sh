#! /bin/bash
mkdir -p /home/arma3server/serverfiles/mods
user=
password=''
array=( 450814997 463939057 )

for i in "${array[@]}"
do

steamcmd +login $user $password +force_install_dir /home/arma3server/serverfiles/mods +workshop_download_item 107410 $i validate +quit

done

