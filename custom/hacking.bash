#!/usr/bin/env bash

# Default edit
export EDITOR=vim

# Local commands
export PATH="~/.bin:$PATH"

# Terraform
alias t='terraform'

# Kubectl
alias k='HTTPS_PROXY=127.0.0.1:8888 kubectl'
source <(kubectl completion bash)
complete -F __start_kubectl k

# Helm
alias helm='HTTPS_PROXY=127.0.0.1:8888 helm'
alias helmfile='HTTPS_PROXY=127.0.0.1:8888 helmfile'

# Google
alias gauth='gcloud auth application-default login'
alias gke='gcloud container clusters get-credentials'

# Git
alias gc='git checkout'
alias gm='git show -s --format=%B HEAD'
alias pull='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias push='git push origin $(git rev-parse --abbrev-ref HEAD)'

# Homebrew
eval $(~/.linuxbrew/bin/brew shellenv)

# Misc
alias reload='source ~/.bashrc'
alias root='cd $(git rev-parse --show-toplevel)'
alias q='exit'
alias hacking='code ~/git/bash-it/custom/hacking.bash'

bash-it-setup() {
    # completions
    bash-it enable completion bash-it \
        defaults dirs docker gcloud \
        git helm hub kubectl terraform
}
