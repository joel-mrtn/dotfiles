fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/env

set -U fish_greeting

starship init fish | source
