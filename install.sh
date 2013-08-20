#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
# Also installs Vundle and associated packages in vimrc
############################

########## Variables

dir=~/.dotfiles                           # dotfiles directory
olddir=~/.dotfiles_old                    # old dotfiles backup directory

# list of files/folders to symlink in homedir
files="bash_profile bashrc gemrc gitconfig inputrc vim vimrc"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to $olddir directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# install vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# run BundleInstall in vim
vim -c BundleInstall -c q -c q
