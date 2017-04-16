# Misc
alias myip='wget -qO - http://drpexe.com/ip.php && echo'
alias month-traffic='vnstat -i wlp3s0 -m'
alias cls='printf "\033c"'
alias hosts='sudo nano /etc/hosts'

# Clean ups
alias rm-pyc='find . -name "*.pyc" -type f -delete'
alias rm-pycache='sudo find . -name "__pycache__" -type d -exec rm -rf {} \;'
alias rm-tmp='find . -name "~*" -type f -delete'

# Python validators
alias pep8-100='pep8 --max-line-length=99'
alias pylint-100='pylint --max-line-length=100'

# Git stuff
alias gs='git status'
alias gc='git commit'
alias gla='git logall'
alias glb='git log --oneline --decorate'
alias ga='git add'
alias gck='git checkout'
alias gp='git push'
alias gdc='git diff --cached'
alias gap='git add --patch'
alias gd='git diff'
alias gf='git fetch'
alias gsl='git stash list'
alias gss='git stash save'
alias gsp='git stash pop'

# OpenFOAM
alias of301='export FOAM_INST_DIR=/opt/OpenFOAM && source /opt/OpenFOAM/OpenFOAM-3.0.1/etc/bashrc && echo "OpenFOAM 3.0.1"'
alias fe31='export FOAM_INST_DIR=/opt/OpenFOAM && source /opt/OpenFOAM/foam-extend-3.1/etc/bashrc && echo "foam-extend 3.1"'
alias pyFoam='source /opt/OpenFOAM/pyFoam/bin/activate && echo -e "pyFoam activated\nRun \"deactivate\" to exit"'

# Salome
alias salome='/opt/SALOME/salome'

# Tor Browser
alias tor='/opt/tor-browser/start-tor-browser -v'

# Go
export GOPATH=$HOME/Dropbox/development/golang
export PATH=$PATH:$GOPATH/bin

cpulimit-c() {
    cpulimit -l $1 -- $2
}

delay-network() {
    sudo tc qdisc add dev lo root netem delay $1
}

delay-network-clear() {
    sudo tc qdisc del dev lo root
}

docker-cleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
    docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")
}
