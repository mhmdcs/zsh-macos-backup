# Adding this to ~/.zshenv ensures that the Rust environment variables are set up for all Zsh sessions
# including non-interactive ones like script executions, and interactive ones like the ones we start when we start the terminal emulator
# This line sources the env script located in $HOME/.cargo/.
# This env script inside .cargo not only sets the PATH, but it also sets other environment variables in the Rust toolchain.
. "$HOME/.cargo/env"
