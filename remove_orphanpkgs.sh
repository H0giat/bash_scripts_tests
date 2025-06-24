#! /usr/bin/env bash

echo " "
echo "------------------------------------------"
echo "| Here are listed all orphaned packages: |"
echo "------------------------------------------"
echo " "

echo " "
echo "==========================================="
pacman -Qdtq
echo "==========================================="
echo " "

echo " "
echo "-------------------------------------------"
echo "| Would you like to remove them? [yes/no] |"
echo "-------------------------------------------"
echo " "

read input

if [[ $input = "yes" ]]; then
	echo " "
	echo "---------------"
	echo "| Removing... |"
	echo "---------------"
	echo " "

	pacman -Rns $(pacman -Qdtq) --noconfirm

	echo " "
	echo "-------------"
	echo "| All done! |"
	echo "-------------"
	echo " "
else
	echo " "
	echo "--------------"
	echo "| Exiting... |"
	echo "--------------"
	echo " "
fi
