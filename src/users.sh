#!/bin/bash

x="start"

menu ()
{
while true $x != "start"
do
clear
echo "=============================================================================================="
echo "                                   USERS"
echo "=============================================================================================="
echo ""
echo "------------------------------------------"
echo "    List Server Users           - 1"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Add Server User             - 2"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Delete Server User          - 3"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Return                      - 9"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Exit                        - 0"
echo "------------------------------------------"
echo ""
echo "Inform the menu option (number): "
read x
echo ""
echo "Menu option ($x)"
echo "=============================================================================================="
echo ""
echo "=============================================================================================="

case "$x" in


    1)
      echo ""
      echo "Server Users"
      echo ""
      less /etc/passwd
      echo ""
echo ""
echo "=============================================================================================="
echo ""
echo "=============================================================================================="
;;
    2)
      echo ""
      echo "Enter the new user NAME for create: "
      read useradd
      echo ""
      echo "want to create a HOME directory? "
      echo "[yes] or [no]: "
      read homedir
      echo ""
      if [ $homedir == 'yes' ]; 
        then sudo adduser $useradd
      fi
      sudo adduser --no-create-home $useradd
      echo ""
      echo "SUCCESS!"
      sleep 1
echo ""
echo "=============================================================================================="
echo ""
echo "=============================================================================================="
;;
    3)
      echo ""
      echo "Enter the user NAME for delete: "
      read userdel
      echo ""
      echo "The user {$userdel} and all their data will be DELETED. Are you sure? "
      echo "[yes] or [no]: "
      read sure
      echo ""
      if [ $sure == 'yes' ]; 
        then sudo userdel -r $userdel
      fi
      echo ""
      echo "SUCCESS!!!"
      sleep 1
echo ""
echo 
"=============================================================================================="
echo ""
echo "=============================================================================================="
;;
    9)
      echo ""
      echo "Returning..."
      echo ""
      src/server.sh
      exit
echo ""
echo "=============================================================================================="
echo ""
echo "=============================================================================================="
;;
    0)
      echo ""
      echo "Exiting..."
      echo ""
      clear
      exit
echo ""
echo "=============================================================================================="
echo ""
echo "=============================================================================================="
;;

*)
        echo "Invalid option!"
esac
done

}
menu
