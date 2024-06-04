## Dotfiles

These are dotfiles are created from https://github.com/cerico/macfair and shouldn't be edited directly as changes will be overwritten

### \_trialling.zsh

Functions and aliases can be added in this file for temporary usage, its in .gitignore so won't be version controlled, but won't be overwritten by macfair

### tokens.zsh

Token and keys should be put in here, this file is also in .gitignore and also won't be overwritten

### .zshrc

This is here purely for information purposes. The "real" .zshrc is still in the homedir. The macfair application copies this across at the end of its run but it doesn't actually do anything. Its "recommended" to do this via a symbolic link not a hard copy, but that could break during the macfair process
