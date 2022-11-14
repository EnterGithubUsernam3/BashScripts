#!/bin/bash
set -e #It sets bash to quit the script in case it encounters any errors.

#Simple script to update pop.os
update(){
printf "Hello I'm updaterbot 5000!Initiating update functions!\n Please insert authorisation passwords!\n"
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get dist-upgrade	
sudo updatedb
flatpak update		#Since a lot of the packages that will be run in this machine are not going to be 
#debian based , we need an auto updater for our flatpack packages too.

	}	


clean(){
sudo apt-get autoremove
sudo apt-get autoclean

	}

leave(){
echo "Hey guy, I'm done!"
exit
}

#Now that we defined each function ,we set the order in which 
#these fucntions will be run.
update
clean
leave
