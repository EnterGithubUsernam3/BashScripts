#!/bin/bash
#It is an easy script that helps you
#make a list out of all the manual padges ,select the command you want to 
#check and feed the manual padge of this command to a pdf reader.




man -k .|dmenu -l 30|awk '{print $1}'|xargs -r man -Tpdf| zathura -

