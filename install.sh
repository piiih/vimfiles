#!/bin/bash

script_dir=$(dirname $0)

if [ "vim" == $1 ]
then
    vim_file=~/.vimrc
    vim_file_bkp=~/.vimrc.bkp

    vim_dir=~/.vim
    vim_dir_bkp=~/.vim.bkp

    if [ -d $vim_dir ]
    then
        COUNTER=0
        while [ -d $vim_dir_bkp ]
        do
            let COUNTER=COUNTER+1
            vim_dir_bkp="$vim_dir.bkp$COUNTER"
        done
        mv $vim_dir $vim_dir_bkp
    fi

    mkdir ~/.vim

    cp -r $script_dir/* ~/.vim

    if [ -f $vim_file ]
    then
        COUNTER=0
        while [ -f $vim_file_bkp ]
        do
            let COUNTER=COUNTER+1
            vim_file_bkp="$vim_file.bkp$COUNTER"
        done
        mv $vim_file $vim_file_bkp
    fi

    ln -s ~/.vim/vimrc ~/.vimrc

    rm ~/.vim/install.sh

    cp ~/.vim/font/Terminus/PCF/ter-* ~/.local/share/fonts/
fi
