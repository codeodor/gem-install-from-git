#!/bin/bash
gemifgTMPDIR=$TMPDIR"_gemifg"
git clone $1 $gemifgTMPDIR
gemifgOWD=$PWD
cd $gemifgTMPDIR
gem build *.gemspec
gem install *.gem
if [ ! -z "$gemifgTMPDIR" ]
  then
    rm -rf $gemifgTMPDIR
fi
cd $gemifgOWD
