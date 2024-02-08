fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/env

set -U fish_greeting
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

starship init fish | source
