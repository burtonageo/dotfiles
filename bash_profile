# GHC/Haskell
#=============
export PATH="~/.cabal/bin:$PATH"
export PATH="~/.ghc/bin:$PATH"
alias cabalupgrades="cabal list --installed  | egrep -iv '(synopsis|homepage|license)'"

# CUDA
#======
export PATH=$PATH:/Developer/NVIDIA/CUDA-5.5/bin
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.5/lib:$DYLD_LIBRARY_PATH

# Rust
#======
export RUST_PATH=~/Projects/Rust:$RUST_PATH
export DYLD_LIBRARY_PATH=/usr/local/Cellar/rust/0.12-pre/lib:$DYLD_LIBRARY_PATH

# Update command
#================
function update {
  brew update && brew upgrade -all;
  brew cleanup && brew prune && brew cask cleanup;
  cabal update;
}
alias upd8="update"

# General
#=======
export EDITOR=“vim”
alias please="sudo $(history -p \!\!)"

# Pretty GIT log
#================
git config --global alias.lg "log
                              --color
                              --graph
                              --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'
                              --abbrev-commit"

# SVN
#=====
alias sc="svn co"
alias sd="svn diff"
alias sst="svn status | grep -v ^X | grep -v 'Performing status on external' | grep -v ^$"
alias sua="svn up --set-depth infinity"
alias sup="svn up | grep -v ^$ | grep -v 'Fetching' | grep -v 'External at'"

# Cling
#=======
alias cling=~/Applications/cling/bin/cling

# Source control aliases
#========================
source ./.git_aliases
source ./.svn_aliases