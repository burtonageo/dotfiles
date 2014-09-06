# My install script to be run on a fresh machine to get
# all of my apps and configuration files installed

#!/usr/local/env bash

# move my bash_profile to my home directory
cp ./bash_profile ~/.bash_profile

# move ghci configuration to home directory
cp ./ghci ~/.ghci

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
(xcode-select --version ||
 xcode-select --install) &&

# Get Alcatraz package manager for XCode (http://alcatraz.io)
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh &&

# Download homebrew
(brew --version ||
 curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install | ruby) &&

# My cli apps
brew install python3 haskell-platform wget sl git bash wine chibi-scheme pandoc &&
brew install figlet cowsay cmake doxygen xctool gcc49 ddate tor tree exercism &&
brew install rbenv ack emacs vim mono mercurial cmake &&

# My general apps
(brew cask ||
 brew install caskroom/cask/brew-cask) &&

brew cask install plug sonora qqmusic appcleaner texshop &&
brew cask install selfcontrol blender chocolat anki alfred &&
brew cask install transmission the-unarchiver aquamacs macvim &&
brew cask install steam vlc flux dropbox caffeine skype handbrake &&
brew cask install java google-chrome deathtodsstore hex-fiend;

# Get rust
cd ~/Downloads &&
git clone https://github.com/rust-lang/rust &&
cd ~/Downloads/rust &&
mkdir -p /usr/local/Cellar/rust/0.12-pre &&
./configure --prefix=/usr/local/Cellar/rust/0.12-pre &&
make all install &&
brew link rust
