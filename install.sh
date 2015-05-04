# My install script to be run on a fresh machine to get
# all of my apps and configuration files installed

#!/usr/local/env bash

# copy bash_profile to home directory
cp ./bash_profile ~/.bash_profile

# load bash_profile
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

# Get Xcode and the Alcatraz package manager (http://alcatraz.io)
( (xcode-select --version  ||
   xcode-select --install) &&
 curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh);

# Download homebrew package manager (http://brew.sh)
(brew --version ||
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)") &&

# Download homebrew cask package manager for gui apps
(brew cask ||
 brew install caskroom/cask/brew-cask);

# My cli apps
brew install git ghc cabal-install python3 wine &&
brew install vim bash sl tor doxygen chibi-scheme &&
brew install cmake xctool mercurial pandoc tree &&
brew install emacs ack wget figlet cowsay ddate;

# My general apps
brew cask install plug appcleaner selfcontrol webp-quicklook &&
brew cask install blender chocolat anki alfred steam flux    &&
brew cask install thong dropbox caffeine vlc google-chrome   &&
brew cask install transmission the-unarchiver handbrak noisy &&
brew cask install deathtodsstore hex-fiend qlstephen qlprettypatch;

# Update
update;

# Get rust and cargo (http://www.rust-lang.org)
rust_get;
cargo_get;

# Get Cling C++ REPL (http://root.cern.ch/drupal/content/cling)
function cling_install {
  mkdir ~/Applications/cling;
  mkdir ./cling;
  cd ./cling;
  curl -fsSL https://raw.githubusercontent.com/karies/cling-all-in-one/master/clone.sh | sh &&
  mv -r inst/* ~/Applications/cling;
  cd ..;
  rm -fr ./cling;
}

(cling -help || cling_install);
