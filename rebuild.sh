#!/bin/bash

sudo mv -f /etc/lirc/lirc_options.conf /etc/lirc/lirc_options.conf.bak

sudo make uninstall

git status | grep typechange | awk '{print $2}' | xargs git checkout

sudo make install

sudo cp -f /etc/lirc/lirc_options.conf.bak /etc/lirc/lirc_options.conf

rm -f /home/jelle/lirc.log
