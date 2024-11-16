#!/bin/bash
git clone https://github.com/onyx-lang/onyx --depth 1 $HOME/onyx
cd $HOME/onyx
source settings.sh
./build.sh compile install
export ONYX_PATH=$HOME/.onyx
echo "export ONYX_PATH=\$HOME/.onyx" >> $HOME/.bashrc
export PATH=$PATH:$HOME/.onyx/bin
echo "export PATH=\$PATH:\$HOME/.onyx/bin" >> $HOME/.bashrc
curl https://get.wasmer.io -sSfL | sh
echo "export PATH=\$HOME/.wasmer/bin:\$PATH" >> $HOME/.bashrc