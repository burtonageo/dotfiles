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
ln -s "/System/Library/CoreServices/Applications/Screen Sharing.app" "/Applications/Screen Sharing.app"

# Create ~/Projects directory for all my programming
mkdir -p ~/Projects

# Get Xcode and the Alcatraz package manager (http://alcatraz.io)
( ( (xcode-select --version ||
     xcode-select --install ||
     xcode-select --license ) &&
   [ ! -f "~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"] ) &&
 curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh);

# Download homebrew package manager (http://brew.sh)
(brew --version ||
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)") &&

# Download homebrew cask package manager for gui apps
(brew cask ||
 brew install caskroom/cask/brew-cask);

# My cli apps
brew install git ghc cabal-install ddate vim &&
brew install bash tor xctool cmake wget tree &&
brew install sl figlet cowsay doxygen pandoc &&
brew install ack;

# My general apps
brew cask install appcleaner selfcontrol webpquicklook vlc   &&
brew cask install blender chocolat plug handbrake flux steam &&
brew cask install thong dropbox caffeine google-chrome noisy &&
brew cask install transmission the-unarchiver qlprettypatch  &&
brew cask install deathtodsstore hex-fiend qlstephen;

# Get rust and cargo (http://www.rust-lang.org)
brew tap cheba/rust-nightly &&
brew install rust-nightly;

# Update
update;