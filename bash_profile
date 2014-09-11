# GHC/Haskell
#=============
export PATH="~/.cabal/bin:$PATH"
export PATH="~/.ghc/bin:$PATH"
alias cabalupgrades="cabal list --installed  | egrep -iv '(synopsis|homepage|license)'"

# Ruby
#======
export PATH="~/.rbenv/bin:$PATH"
export PATH="/usr/local/Cellar/ruby/2.1.1_1/lib/ruby/gems/2.1.0/gems:$PATH"

eval "$(rbenv init -)"
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# CUDA
#======
export PATH=$PATH:/Developer/NVIDIA/CUDA-5.5/bin
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.5/lib:$DYLD_LIBRARY_PATH

# Rust
#======
export RUST_PATH=~/Projects/Rust:$RUST_PATH
export DYLD_LIBRARY_PATH=/usr/local/Cellar/rust/0.12-pre/lib:$DYLD_LIBRARY_PATH
alias rpull="cd ~/Downloads/rust && git pull && cd -"

alias rget="cd ~/Downloads && git clone https://github.com/rust-lang/rust;"
alias rinstall="mkdir -p /usr/local/Cellar/rust/0.12-pre;
                cd ~/Downloads/rust; ./configure --prefix=/usr/local/Cellar/rust/0.12-pre &&
                make all install && brew link rust"
alias rupdate="rpull && brew rm rust && rinstall"

# Cargo
#=======
alias cargo_get="git clone https://github.com/rust-lang/cargo;
                 cd cargo;
                 ./configure &&
                 make &&
                 make install;"

# Go
#====
export GOPATH=~/Projects/Go:$GOPATH
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

# Urbit
#=======
export URBIT_HOME=~/Urbit

# Update command
#================
alias update="brew update && brew upgrade --build-from-source --cc=clang;
              brew cleanup && brew prune && brew cask cleanup;
              cabal update"

# General
#=======
export EDITOR="choc"
alias please='sudo $(history -p \!\!)' 

# Pretty GIT log
#================
git config --global alias.lg "log
                              --color
                              --graph
                              --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'
                              --abbrev-commit"

# Exercism home
#===============
 export EXERCISM_HOME=~/Projects/exercism
