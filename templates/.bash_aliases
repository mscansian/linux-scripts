alias myip='wget -qO - http://drpexe.com/ip.php && echo'
alias rm-pyc='find . -name "*.pyc" -type f -delete'
alias rm-tmp='find . -name "~*" -type f -delete'
alias cls='printf "\033c"'

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

alias salome='/opt/SALOME/salome'

# Tor Browser
alias tor='/opt/tor-browser/start-tor-browser -v'

cpulimit-c() {
    cpulimit -l $1 -- $2
}

delay-network() {
    sudo tc qdisc add dev lo root netem delay $1
}

delay-network-clear() {
    sudo tc qdisc del dev lo root
}
