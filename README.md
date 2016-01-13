# RobertJames / RoboticDinosaur Dotfiles

## Requirements

Set ZSH as your login shell:

    chsh -s $(which zsh)

## Install

Clone to your system:

    git clone git://github.com/RobertJames/dotfiles.git ~/.dotfiles

Install [RCM](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

    packer -S rcm

Install the dotfiles:

    cd ~/.dotfiles
    rcup

