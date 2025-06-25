set -g fish_greeting

if status is-interactive
    starship init fish | source
end

alias vi="nvim" # Use neovim instead of vim
alias vicode="nvim ~/Documents/Code/cs165/"
alias vim="nvim"
alias ls="exa" # Use exa instead of ls
alias ll="exa -la"
alias la="exa -a"
alias lc="exa --long --classify"
alias l="exa -l"
alias tree="exa --tree"
alias c="clear"
alias y="yazi"
# alias py="/home/abeer/miniforge3/envs/sklearn-env/bin/python3.1"
command -qv nvim && alias vim nvim

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

zoxide init --cmd cd fish | source

set -gx PIP_HOME /opt/anaconda/bin
set -gx PATH $PATH $PIP_HOME

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
pyenv init - fish | source


fish_add_path /home/abeer/.spicetify

# Created by `pipx` on 2025-05-02 02:39:44
set PATH $PATH /home/abeer/.local/bin
