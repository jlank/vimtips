#!/bin/bash

working_dir="$HOME/Scm/vimtips"
lnbreak="\----------------------------------------" # remove with grep, also will remove comment lines (^")
line=$(cat $working_dir/vim.tips.txt | grep -v "$lnbreak" | grep -v "^\"" | perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);' | head -n1)
number=$(grep -nr "$line" $working_dir/vim.tips.txt | awk -F: '{ print $2 }') #get the line number so we can open up to it
if [ -z ${number+x} ]; then number=0; fi # I don't think this works

terminal-notifier -message "$line" -title "Vim Tip of Today" -subtitle "line $number" -execute "$working_dir/openvim.sh 'vim +$number $working_dir/vim.tips.txt'"