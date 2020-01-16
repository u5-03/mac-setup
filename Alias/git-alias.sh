# git Aliases
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'
alias gaproj='git aproj'
alias gb='git branch'
alias gc='git commit'
alias gcl='git clone'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdt='git difftool'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfp='git fetch -p'
alias gl='git log'
alias gmnf='git merge --no-ff'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbo='git rebase --onto'
alias grhe='git reset HEAD'
alias grha='git reset --hard'
alias grhs='git reset HEAD\^ --soft'
alias gst='git stash -u'
alias gstp='git stash pop'
alias gstpf='git stash pop #'
alias gstl='git stash list'
alias grbdev='git rebase origin/develop'
alias grbidev='git rebase -i origin/develop'
alias gcd='git reset HEAD .; git checkout .; git clean -df .'
alias gra='git remote add origin'
alias gpl='git pull origin'
alias gps='git push origin'
alias gpsf='git push -f origin'
alias gs='git status'

function grh() {
  if [ ! -n "$1" ] && [ -e $1 ]; then
    echo "arg1: branch name is required!"; return
  else
    git reset --hard origin/$1
  fi
}

function grb() {
  git rebase origin/$1
}

function grbi() {
  git rebase -i origin/$1
}

function gc() {
  git checkout $1
}