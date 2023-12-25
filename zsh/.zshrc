# add homebrew and cargo to PATH
source $HOME/.cargo/env
eval $(/opt/homebrew/bin/brew shellenv)

# configure oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# run start scripts
source $ZSH/oh-my-zsh.sh
eval $(starship init zsh)
