#!/bin/bash
cd ~/mail
for i in $(seq $3 $4) 
do
	wget http://download.gmane.org/$1/$((1 + (i - 1) * 5000))/$((i * 5000)) -O $2/$(printf %03d $i).$((1 + (i - 1) * 5000)).$((i * 5000))
done
cd -
