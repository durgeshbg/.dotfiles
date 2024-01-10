# **.dotfiles**

## System Preferences
Make your preferred system settings.

---


## Installing the Xcode Command Line Tools on a Mac
```zsh
xcode-select --install
```

---


## Clone this repository in the home directory
1. Change to home directory.
    ```zsh
    cd ~
    ```
2. Clone this repository.
    ```zsh
    # Use http
    git clone https://github.com/Durgesh-babu/.dotfiles.git
    ```
    ```zsh
    # Or use ssh
    git clone git@github.com:Durgesh-babu/.dotfiles.git
    ```

---


## Create symlinks in home directory for files from current directory
```zsh
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
```

---


## Home Brew
- Install Brew.
    ```zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
- Install bundle
    1. Change to the .dotfiles directory.
    ```zsh
    cd ~/.dotfiles
    ```
    2. Run the bundle install command.
    ```zsh
    brew bundle
    ```
- Brewfile Creation
    - If already exists overide in cwd.
    ```zsh
    brew bundle dump --force
    ```
    - else
    ```zsh
    brew bundle dump
    ```
---


## Node Installation
- Install nvm.
    ```zsh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    ```
    ```zsh
    nvm --version
    ```

- Install Node.
    ```zsh
    nvm install --lts
    ```
    ```zsh
    nvm use --lts
    ```
---


## Install Python packages
- Run the pip3 install command.
    ```zsh
    pip3 install -r requirements.txt
    ```
- Create requirements.txt
    ```zsh
    pip freeze >> ~/.dotfiles/requirements.txt
    ```

---

## Terminal Configuration (Optional)
- Install oh-my-zsh
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```
- Install Powerlevel10k theme into the costum zsh theme folder.
    ```zsh
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

- Install plugins.
    - Zsh autosuggestions. 
        ```zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
        ```
    - Zsh syntax highlighting.
        ```zsh
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
        ```
- Edit .zshrc
    - Find ZSH_THEME
        ```zsh
        ZSH_THEME="powerlevel10k/powerlevel10k"
        ```
    - Find ENABLE_CORRECTION.
        ```zsh
        ENABLE_CORRECTION="true"
        ```
    - Edit plugins.
        ```zsh
        plugins=(
        git 
        zsh-autosuggestions
        vi-mode
        zsh-syntax-highlighting
        )
        ```

---


## VSCodeVim (Optional)
To enable key-repeating, execute the following in your Terminal, log out and back in, and then restart VS Code:
```zsh
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

---

## TPM for Tmux (Optional)
```zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```