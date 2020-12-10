#!/bin/bash

read -p 'What is filename?' filename
read -p 'What is Time' time 
 


cat $HOME/Desktop/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$filename | grep $time | awk '{print $1}'

