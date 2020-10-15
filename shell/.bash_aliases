#!/bin/bash


# ls aliases
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'

# git aliases
alias gpr='git pull --rebase'
alias retag_unstable="git tag -f unstable; git push --tags -f"
alias retag_stable="git tag -f stable; git push --tags -f"

# ansible aliases
alias ansible-playbook="ansible-playbook --vault-password-file=vaultpass.txt"
alias ansible="ansible --vault-password-file=vaultpass.txt"
alias ansible-vault="ansible-vault --vault-password-file=vaultpass.txt"

alias re_dotfile='source ~/.bashrc'

