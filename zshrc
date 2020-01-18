export ZSH="/Users/zhangjinglin/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-completions)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/ruby/bin:$PATH"
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

export LANG=en_US.UTF-8

alias v=vim


