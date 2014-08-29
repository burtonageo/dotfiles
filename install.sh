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
mkdir -p ~/Projects/exercism

# Get Xcode
xcode-select --install &&

# Download homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" &&

# My cli apps
"brew install python3 haskell-platform wget sl git bash wine mit-scheme pandoc
              coq figlet cowsay cmake doxygen xctool gcc49 ddate proof-general
              tor tree exercism rbenv ack emacs vim mono" &&

# My general apps
brew install caskroom/cask/brew-cask &&
"brew cask install plug sonora qqmusic appcleaner texshop
                   selfcontrol blender chocolat anki alfred
                   transmission the-unarchiver archive-browser
                   aquamacs macvim steam vlc flux dropbox caffeine
                   skype handbrake xamarin-studio unity3d
                   google-chrome firefox deathtodsstore"

# Get rust
rget
