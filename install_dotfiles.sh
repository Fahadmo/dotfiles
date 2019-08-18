#!/bin/bash
echo `dirname $(readlink -f $0)`
#==============
# Remove old dot flies
#==============
#sudo rm -rf ~/.vimrc > /dev/null 2>&1
#sudo rm -rf ~/.zshrc > /dev/null 2>&1
#sudo rm -rf ~/.vim > /dev/null 2>&1
#sudo rm -rf ~/zsh-git-prompt > /dev/null 2>&1
#
##==============
## Create symlinks in the home folder
## Allow overriding with files of matching names in the custom-configs dir
##==============
#ln -sf ~/dotfiles/vimrc ~/.vimrc
#ln -sf ~/dotfiles/vim ~/.vim
#ln -sf ~/dotfiles/zshrc ~/.zshrc
#ln -sf ~/dotfiles/zsh-git-prompt ~/zsh-git-prompt
#
##==============
## Set zsh as the default shell
##==============
#chsh -s /bin/zsh
#
#echo -e "\n====== All Done!! ======\n"
