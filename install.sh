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

# Download homebrew package manager
(brew --version ||
 curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install | ruby) &&

# Download homebrew cask package manager for gui apps
(brew cask ||
 brew install caskroom/cask/brew-cask);

# My cli apps
brew install python3 haskell-platform wget sl git bash wine chibi-scheme &&
brew install figlet cowsay cmake xctool gcc49 ddate tor emacs vim &&
brew install rbenv ack mono mercurial cmake pandoc tree doxygen &&

# My general apps
brew cask install plug sonora qqmusic appcleaner texshop &&
brew cask install selfcontrol blender chocolat anki alfred &&
brew cask install transmission the-unarchiver aquamacs macvim &&
brew cask install steam vlc flux dropbox caffeine skype handbrake &&
brew cask install java google-chrome deathtodsstore hex-fiend &&
brew cask install thong webp-quicklook noisy;

# Get Alcatraz package manager for XCode (http://alcatraz.io)
xcode-select --version &&
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh;

# Get rust
cd ~/Downloads &&
git clone https://github.com/rust-lang/rust &&
cd ~/Downloads/rust &&
mkdir -p /usr/local/Cellar/rust/0.12-pre &&
./configure --prefix=/usr/local/Cellar/rust/0.12-pre &&
make all install &&
brew link rust
