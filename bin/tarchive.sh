#!/bin/bash
export PWD=`pwd`
cd ~/reop/kernel-remote 
git archive --prefix=`git describe $1`/ $1 | gzip >$2
cd $PWD
