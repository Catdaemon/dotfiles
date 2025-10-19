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
brew install powerlevel10k ripgrep ffind markdownlint-cli node yazi lazygit lsd

