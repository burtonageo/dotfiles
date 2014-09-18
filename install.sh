# My install script to be run on a fresh machine to get
# all of my apps and configuration files installed

#!/usr/local/env bash

# copy my bash_profile to my home directory
cp ./bash_profile ~/.bash_profile

# load my bash_profile
source ~/.bash_profile

# copy ghci configuration to home directory
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

# Download homebrew package manager (http://brew.sh)
(brew --version ||
 curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install | ruby) &&

# Download homebrew cask package manager for gui apps
(brew cask ||
 brew install caskroom/cask/brew-cask);

# My cli apps
brew install python3 ghc cabal-install wget sl git bash wine vim doxygen &&
brew install figlet cowsay cmake xctool ddate tor emacs chibi-scheme &&
brew install rbenv ack mono mercurial pandoc tree  &&

# My general apps
brew cask install plug sonora qqmusic appcleaner texshop &&
brew cask install selfcontrol blender chocolat anki alfred &&
brew cask install transmission the-unarchiver aquamacs macvim &&
brew cask install steam vlc flux dropbox caffeine skype handbrake &&
brew cask install java google-chrome deathtodsstore hex-fiend &&
brew cask install thong webp-quicklook qlstephen qlprettypatch noisy;

# Get Alcatraz package manager for XCode (http://alcatraz.io)
xcode-select --version &&
curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh;

# Update
update

# Get rust (http://www.rust-lang.org)
rget
cargo_get

# Get Cling C++ REPL (http://root.cern.ch/drupal/content/cling)
wget --output-document=cling_build.sh https://raw.githubusercontent.com/karies/cling-all-in-one/master/clone.sh;
chmod 755 cling_build.sh
./cling_build.sh
