alias csc='/usr/local/share/dotnet/dotnet exec "/usr/local/share/dotnet/sdk/8.0.100/Roslyn/bincore/csc.dll"'

# Update command
#================
function update {
  brew update && brew upgrade --all --greedy;
  brew cleanup && brew prune;
}
alias upd8="update"

# General
#=======
export EDITOR=“vim”
alias please="sudo $(history -p \!\!)"

# Git
#=====
alias gpom="git push origin master"
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff --"
alias gds="git diff -- --stashed"
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
