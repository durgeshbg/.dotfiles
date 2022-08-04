# **.dotfiles**

## Installing the Xcode Command Line Tools on a Mac
```zsh
xcode-select --install
```

## Clone this repo in the home directory
```zsh
# Use http
git clone https://github.com/Durgesh-babu/.dotfiles.git

# Or use ssh
git clone git@github.com:Durgesh-babu/.dotfiles.git
```

## Create symlinks in home directory for files from current directory
```zsh
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.hushlogin ~/.hushlogin

```

## Home Brew
> 1. Install Brew  

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
> 2. Install bundle

```zsh
cd ~/.dotfiles && brew bundle
```
