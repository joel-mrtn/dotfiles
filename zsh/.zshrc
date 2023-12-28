# add homebrew and cargo to PATH
source $HOME/.cargo/env
eval $(/opt/homebrew/bin/brew shellenv)

# configure oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
plugins=(git zsh-autosuggestions zsh-syntax-highlighting macos)

# run start scripts
source $ZSH/oh-my-zsh.sh
eval $(starship init zsh)
