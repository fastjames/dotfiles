# Some useful aliases
# vi:filetype=sh:

alias h='history'
alias l="ls -lah"
alias ls="ls -FG"
alias l0="ls -lh | awk '\$5 == 0'"
alias ll="ls -lh"
alias lla="ls -alh"
alias lld="ls -lh | grep ^d"
alias vi='vim'
alias grep='grep --color=auto'
alias pgrep='pgrep -Lif'

tu() { tar cvzfp ${1%/}.tgz $1; }
ut() { tar xvzfp $1; }

################
# Mac-Specific #
################

alias show_hidden='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hide_hidden='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
