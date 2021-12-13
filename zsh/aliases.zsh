# Basic
alias la='ls -hal'
alias ..='cd ..'
alias extract='unrar e'
alias gist='gist -p -c'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias kan='killall node'
alias psgrep='ps aux | grep'
alias prettyclip='pbpaste | jq .'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias grunt='./node_modules/.bin/grunt'

# Git aliases
alias gmb='echo $(git symbolic-ref refs/remotes/origin/HEAD | sed ''s@^refs/remotes/origin/@@'')'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push -u origin HEAD'
alias gfp='git push origin $(git branch-name) --force-with-lease'
alias gd='git diff'
alias gsd='git difftool --extcmd icdiff'
alias gdd='git difftool'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git co -b'
alias gs='git status -sb'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gpop='git checkout -'
alias gcm='git checkout $(gmb)'
alias gcb='git branch --merged $(gmb) | grep -v "\* $(gmb)" | xargs -n 1 git branch -d'
alias grbm='git rebase -i $(gmb)'
# alias gpr='open "$(git config --get remote.origin.url | sed '\''s#github.com:#github.com/#'\'' | sed '\''s#git@#https://#'\'' | rev | cut -f 2- -d'\''.'\'' | rev )/compare/$(git branch-name)?expand=1"'
alias gpr='open "https://github.com/$(git config --get remote.origin.url | cut -d'\'':'\'' -f 2 | rev | cut -f 2- -d'\''.'\'' | rev)/compare/$(git branch-name)?expand=1"'
alias gsp='git stash pop'
alias gauf='git add $(git ls-files -o --exclude-standard)'
alias gsc='git diff --name-only --diff-filter=U'

# Spin
if [ "$SPIN" ]; then
    alias procs='systemctl list-units "proc*"'
    alias core-stop='systemctl stop proc-shopify--shopify@server.service'
    alias sfr-stop='systemctl stop proc-shopify--storefront-renderer@server.service'
    alias core-start='systemctl start proc-shopify--shopify@server.service'
    alias sfr-start='systemctl start proc-shopify--storefront-renderer@server.service'
    alias debug-sfr='PRY=1 bundle exec rake server_isospin'
    alias sfr-logs='journalctl -fu proc-shopify--storefront-renderer@server.service'
    alias core-logs='journalctl -fu proc-shopify--shopify@server.service'
fi