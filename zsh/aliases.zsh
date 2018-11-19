# General
alias vim='nvim'
alias so='source'
alias ls='exa'
alias l='ls'
alias ll='ls -lh'
alias la='ls -a'

# tmux
alias t="tmux -u"
alias ta='tmux attach'
alias tat='tmux new-session -As `basename $PWD | sed -e "s/\./-/g"`'
alias tk='tmux kill-session'
alias tkall='while true; do tk || break; done'
alias tmux-set-title='tmux rename-session `basename $PWD | sed -e "s/\./-/g"`'

# Git
alias g='git'
alias gp='git push'
alias gf='git fetch'
alias gu='git pull'
alias ga='git add --all'
alias gd='git diff'
alias gl='git log'
alias gla='git log --all'
alias gt='git tree'
alias gta='git tree --all'
alias gdt='git difftool'
alias gmt='git mergetool'
alias gs='git status -sb'
alias gci='git commit -m'
alias gcm='git checkout master'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
# Hub
alias gb='hub browse'
alias gpr='hub pull-request'

alias json='python -mjson.tool'
alias pweb='python -m SimpleHTTPServer'

if [ is_mac ]; then
  alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
  alias md='open -a Marked'
  alias safari_address="osascript -e 'tell application \"Safari\" to return URL of current tab of front window'"
  alias batt="pmset -g batt | sed '1d' | sed -e 's/-InternalBattery-0//' | awk '{\$1=\$1}1'"
fi

alias ddate='date +"%Y-%m-%d"'
alias ytdl='cd ~/Movies && youtube-dl `pbpaste`'
alias yr="yarn run"
alias npr="npm run"

# Docker
alias docker-killall="docker ps | tail -n +2 | awk '{ print \$1 }' | xargs docker kill"

# Utils
alias week='date +%V'
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
