#### Misc ####
alias myip='curl https://api.ipify.org/; echo'
alias month-traffic='vnstat -i wlp3s0 -m'
alias cls='printf "\033c"'
alias hosts='sudo nano /etc/hosts'

#### Clean ups ####
alias rm-pyc='find . -name "*.pyc" -type f -delete'
alias rm-pycache='sudo find . -name "__pycache__" -type d -exec rm -rf {} \;'
alias rm-tmp='find . -name "~*" -type f -delete'

#### Python validators ####
alias pep8-100='pep8 --max-line-length=99'
alias pylint-100='pylint --max-line-length=100'

#### Git stuff ####
alias gs='git status'
alias gc='git commit'
alias gla='git logall'
alias glb='git log --oneline --decorate'
alias ga='git add'
alias gck='git checkout'
alias gp='git push'
alias gpm='git push origin master'
alias gdc='git diff --cached'
alias gap='git add --patch'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gmd='git merge dev'
alias gsl='git stash list'
alias gss='git stash save'
alias gsp='git stash pop'

#### Software Alias ####
alias salome='/opt/SALOME/salome'
alias tor='/opt/tor-browser/start-tor-browser -v'
alias of4='source /opt/openfoam4/etc/bashrc'

#### Go ####
export GOPATH=$HOME/Dropbox/development/golang
export PATH=$PATH:$GOPATH/bin

#### Docker ####
docker-cleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
    docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")
}

#### Limit CPU ####
cpulimit-c() {
    cpulimit -l $1 -- $2
}

#### Delay Network ####
alias delay-network-upload='sudo tc qdisc add dev wlp3s0 root tbf rate 1mbit latency 50ms burst 10000'
alias delay-network-clear='sudo tc qdisc del dev wlp3s0 root'
