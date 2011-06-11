#!/bin/bash
export PWD=`pwd`
cd ~/repo/$1
git archive --prefix=$2/ $3 | (cd ~/snap && tar xvf -)
cd $PWD
