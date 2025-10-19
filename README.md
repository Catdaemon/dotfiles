# My Dotfiles

This uses `chezmoi`.

## Installation

First, `brew install chezmoi`

Then, run the following command to set up chezmoi with my dotfiles:

`chezmoi init --apply catdaemon/dotfiles`

Then, use this script to install necessary dependencies and perform setup:
`zsh ~/setup.macos.sh`

## Commands

`chezmoi apply` - Apply the dotfiles
`chezmoi add <path>` - Add something new to to be managed
`chezmoi edit` - Edit the dotfiles
`chezmoi cd` - Cd to the dotfiles
`chezmoi diff` - See what changes will be made

## Pushing changes back to git

`chezmoi cd` to go to the dotfiles directory, then use
`git add`, `git commit`, and `git push` as normal.
