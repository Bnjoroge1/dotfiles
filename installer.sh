#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

#oh-my-zsh plugins
ln -s ${BASEDIR}/oh-my-zsh

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
