#!/usr/local/env bash

# move my bash_profile to my home directory
mv ./bash_profile ~/.bash_profile

# Symlink the useful Screen Sharing app
ln -s /System/Library/CoreServices/Applications/"Screen Sharing.app" /Applications/"Screen Sharing.app"

# Create ~/Projects directory for all my programming
mkdir -p ~/Projects
mkdir -p ~/Projects/CPP
mkdir -p ~/Projects/Haskell
mkdir -p ~/Projects/Rust
mkdir -p ~/Projects/ObjC
mkdir -p ~/Projects/exercism

# Get Xcode
(xcode-select --version || xcode-select --install) &&

# Get Alcatraz package manager
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh &&

# Download homebrew
(brew --version ||
 ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)") &&

# My cli apps
"brew install python3 haskell-platform wget sl git bash wine chibi-scheme pandoc
              figlet cowsay cmake doxygen xctool gcc49 ddate tor tree exercism
              rbenv ack emacs vim mono mercurial cmake" &&

# My general apps
(brew cask ||
 brew install caskroom/cask/brew-cask) &&

"brew cask install plug sonora qqmusic appcleaner texshop
                   selfcontrol blender chocolat anki alfred
                   transmission the-unarchiver aquamacs macvim
                   steam vlc flux dropbox caffeine skype handbrake
                   java google-chrome deathtodsstore hex-fiend"

# Get rust
rinstall
