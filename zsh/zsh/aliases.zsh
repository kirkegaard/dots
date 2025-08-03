# General
alias vim='nvim'
alias so='source'
alias cat='bat'
alias ls='eza --icons --group'
alias l='ls'
alias ll='ls -lh'
alias la='ls -a'

alias todo='vim ~/Documents/todo.md'

# Virt manager
alias vm="virt-manager --no-fork"

# tmux
alias t="tmux -u"
alias ta='tmux attach -d'
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

alias json='jq'
alias pweb='python3 -m http.server 1337'

if [ is_mac ]; then
  alias batt="pmset -g batt | sed '1d' | sed -e 's/-InternalBattery-0//' | awk '{\$1=\$1}1'"
fi

alias ddate='date +"%Y-%m-%d"'
alias ytdl='cd ~/Movies && yt-dlp -f 140 `pbpaste`'

# Docker
alias docker-killall="docker ps | tail -n +2 | awk '{ print \$1 }' | xargs docker kill"

# Utils
alias week='date +%V'
