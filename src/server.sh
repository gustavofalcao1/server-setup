#!/bin/bash

x="start"

menu ()
{
while true $x != "start"
do
clear
echo "=============================================================================================="
echo "                                   SAMBA"
echo "=============================================================================================="
echo ""
echo "------------------------------------------"
echo "    Config                      - 1"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Users                       - 2"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Groups                      - 3"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    SAMBA                       - 4"
echo "------------------------------------------"
echo "------------------------------------------"
echo "    Exit                        - 0"
echo "------------------------------------------"
echo ""
echo "Inform the menu option (number): "
read x

case "$x" in

  1)
    src/config.sh
    exit
    echo ""
;;
  2)
    src/users.sh
    exit
    echo ""
;;
  3)
    src/groups.sh
    exit
    echo ""
;;
  4)
    src/samba.sh
    exit
    echo ""
;;
  5)
    src/web.sh
    exit
    echo ""
;;
  6)
    src/tools.sh
    exit
    echo ""
;;
  0)
    clear
    exit
    echo ""
;;
  *)
    echo "Invalid option!"
esac
done

}
menu
