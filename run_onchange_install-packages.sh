#!/bin/bash

# Install Homebrew if not already installed
# Check for Homebrew
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install packages from packages.macos.txt
brew install powerlevel10k ripgrep ffind fzf markdownlint-cli node yazi lazygit lsd zoxide jj tmux

# Install js DAP debugger
if [ ! -d ~/dev/microsoft/vscode-node-debug2 ]; then
    mkdir -p ~/dev/microsoft
    git clone https://github.com/microsoft/vscode-node-debug2.git ~/dev/microsoft/vscode-node-debug2
    cd ~/dev/microsoft/vscode-node-debug2
    npm install
    NODE_OPTIONS=--no-experimental-fetch npm run build
else
    echo "vscode-node-debug2 is already installed."
fi

# Install Bun
curl -fsSL https://bun.sh/install | bash

# Install critique globally using Bun
bun install -g critique
