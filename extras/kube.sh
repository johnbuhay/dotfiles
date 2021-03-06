# shortcuts for kubernetes

alias k='kubectl'
alias kubeectl='kubectl'

# kubectl does not do globbing or directories natively
# for example: KUBECONFIG=${HOME}/.kube/conf.d/*config
function set_kubeconfig {
    KUBECONFIG=${HOME}/.kube/config
    KUBE_PATH=$(find ${HOME}/.kube/conf.d -type f -or -type l | tr '\n' ':')
    echo ".kubeconfig:${KUBE_PATH%?}:${KUBECONFIG}"
}

# Switching to symlinks pointing config -> conf.d/cluster.config
export KUBECONFIG=~/.kube/config

echo 'Loaded kubernetes shortcuts'

# %? will drop the last character from the parameter, in this case ':'
# https://www.gnu.org/software/bash/manual/bashref.html#Shell-Parameter-Expansion
