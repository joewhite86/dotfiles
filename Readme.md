# My preferred configs

This was set up following this guide: [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## Installation

```bash
curl -Lks http://bit.do/install-configs | /bin/bash
```

## Post-Installation

```bash
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
```

## Git Usage

An alias script should be installed when using the installation script.

```bash
config status
config add file
config commit -m message
config push
```
