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

# Cargo
#=======
function cargo_get {
  git clone https://github.com/rust-lang/cargo;
  cd cargo;
  ./configure &&
  make &&
  make install;
}

# Update command
#================
function update {
  brew update —all && brew upgrade;
  brew cleanup && brew prune && brew cask cleanup;
  cabal update;
}
alias upd8="update"

# General
#=======
export EDITOR="choc"
alias please="sudo $(history -p \!\!)"

# Pretty GIT log
#================
git config --global alias.lg "log
                              --color
                              --graph
                              --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'
                              --abbrev-commit"

# Cling
#=======
alias cling=~/Applications/cling/bin/cling
