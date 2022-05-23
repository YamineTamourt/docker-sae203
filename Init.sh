#!/bin/bash

echo "Entrer le lien de la playlist/video (vide pour generer la playlist d'exemple)"
echo ""

read lien

if [[ -z $lien ]]
then
	echo ""
	echo "generation de la playlist d'exemple ..."
	echo ""
	
	systemctl start jellyfin

	exit 0
fi

youtube-dl -s $lien > /dev/null 2> /dev/null

if [ $? -ne 0 ]
then
	echo ""
	echo "lien invalide"
	echo "generation de la playlist d'exemple ..."
	echo ""
else
	echo ""
	echo "telechargement de la playlist/video ..."
	echo ""
	
	cd /media
  
  rm *

	youtube-dl $lien
fi

systemctl start jellyfin

exit 0
