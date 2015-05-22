#!/bin/sh

for f in `cat ./applist`;
do
  sudo pacman -S  --noconfirm --needed $f;
done
