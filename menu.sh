#!/bin/bash
 

 echo "write a command like password.sh: [-h] [-v] [-m] [-g] [-N] [-t] mot"






function helpp
{
  cat help 
}


function Menu_textuel
{
  PS3="Votre choix :"  #création d'un message pour saisir votre choix

select item in "vérification du mot de passe" "Help"  "version et nom auteurs " " Quitter" #création d'un menu avec la commande select  
do

echo "Vous avez choisi l'item $REPLY : $item" #afficher l'indice de l'item
case $REPLY in
1)
echo "vérification du mot de passe : via option -t "
veriff
;;

2)
echo "Help: via option -h"
helpp
;;

3)
echo "Version et auteurs: via option -v"
version_nomAuteurs
;;

4)
echo "Fin du script"
exit 0
;;

*)
echo "CHOIX INCORRECT !!!"
;;

esac

done
}




function  version_nomAuteurs
{
echo "Les auteurs sont: Fayrouz Hidouri  & Hadir Elayeb"
echo "La version :0.7"
} 



 exit 0
