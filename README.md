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
```

---


## Home Brew
1. Install Brew.
    ```zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2. Install bundle
    1. Change to the .dotfiles directory.
    ```zsh
    cd ~/.dotfiles
    ```
    2. Run the bundle install command.
    ```zsh
    brew bundle
    ```

---


## Terminal Configuration
1. Install oh-my-zsh
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```
2. Install Powerlevel10k theme into the costum zsh theme folder.
    ```zsh
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

3. Install plugins.
    1. Zsh autosuggestions. 
        ```zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
        ```
    2. Zsh syntax highlighting.
        ```zsh
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
        ```
4. Edit .zshrc
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


## VS Code Extensions Install
1. Change to vs-code directory inside the .dotfiles directory.
    ```zsh
    cd ~/.dotfiles/vs-code
    ```
2. Run the bash script file.
    ```zsh
    ./vscode-extension-install.sh
    ```

---


## Node Installation
1. Install nvm.
    1. Installation.
        ```zsh
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
        ```
    2. Check nvm installation version.
        ```zsh
        nvm --version
        ```

2. Install Node.
    1. Installation of 
        ```zsh
        nvm install --lts
        ```
    2. Setting the Node version to long term support.
        ```zsh
        nvm use --lts
        ```
---


## Install Python packages
1. Change to the .dotfiles directory.
    ```zsh
    cd ~/.dotfiles
    ```
2. Run the pip3 install command.
    ```zsh
    pip3 install -r requirements.txt
    ```

---
