#!/bin/bash

function existFile {
  file=$1
  if [ -f $file ]
  then
    return 0
  fi

  return 1
}

function existSymlink {
  symlink=$1
  if [ -h $symlink ]
  then
    return 0
  fi

  return 1
}

function existDirectory {
  directory=$1
  if [ -d $directory ]
  then
    return 0
  fi

  return 1
}

script_dir=$(dirname $0)

no_backup=$2

if [ -z $no_backup ]
then
  let no_backup="null"
fi

if [ "vim" == $1 ]
then
    vim_file=~/.vimrc
    vim_file_bkp=~/.vimrc.bkp

    vim_dir=~/.vim
    vim_dir_bkp=~/.vim.bkp

    if existDirectory $vim_dir && [ "--no-backup" != $no_backup ]
    then
        COUNTER=0
        while existDirectory $vim_dir_bkp 
        do
            let COUNTER=COUNTER+1
            vim_dir_bkp="$vim_dir.bkp$COUNTER"
        done
        mv $vim_dir $vim_dir_bkp
    fi

    if [ "--no-backup" == $no_backup ]
    then
      rm -rf ~/.vim
    fi

    mkdir ~/.vim

    cp -r $script_dir/* ~/.vim

    if existSymlink ~/.vimrc
    then
      rm ~/.vimrc 
    fi

    if existFile $vim_file && [ "--no-backup" != $no_backup ]
    then
        COUNTER=0
        while existFile $vim_file_bkp
        do
            let COUNTER=COUNTER+1
            vim_file_bkp="$vim_file.bkp$COUNTER"
        done
        mv $vim_file $vim_file_bkp
    fi

    ln -s ~/.vim/vimrc ~/.vimrc

    rm ~/.vim/install.sh

    vim -c "PlugInstall|:qa"
fi
