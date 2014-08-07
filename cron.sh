#!/bin/bash

script="${HOME}/Scm/vimtips/randomline.sh" #insert the path to your script here
min=$(( 8 * 60 ))
rmin=$(( $RANDOM % $min ))
#at -f "$script" 10:00 AM + ${rmin} minutes
at -f "$script" now + 1 minute
