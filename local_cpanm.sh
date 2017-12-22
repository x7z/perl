#!/bin/bash

# see: https://stackoverflow.com/questions/2980297/how-can-i-use-cpan-as-a-non-root-user
wget -O- http://cpanmin.us | perl - -l ~/perl5 App::cpanminus local::lib
eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
echo 'eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`' >> ~/.profile
echo 'export MANPATH=$HOME/perl5/man:$MANPATH' >> ~/.profile

# in docker better use ~/.bashrc 
