#!/usr/local/env bash

# move my bash_profile to my home directory
mv bash_profile ./.bash_profile
cp ./.bash_profile ~/.bash_profile

# Create ~/Projects directory for all my programming
mkdir -p ~/Projects
mkdir -p ~/Projects/exercism

# Download homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# My cli apps
brew install python3 haskell-platform wget git bash wine mit-scheme pandoc
brew install coq figlet cowsay cmake doxygen xctool gcc49 ddate proof-general
brew install tor tree exercism rbenv ack emacs vim

# My general apps
brew install caskroom/cask/brew-cask
brew cask install plug sonora qqmusic appcleaner texshop
brew cask install selfcontrol blender chocolat anki alfred
brew cask install transmission the-unarchiver archive-browser
brew cask install aquamacs macvim steam vlc flux dropbox
