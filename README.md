# .dotfiles

## Clone Repo
Download this repo in the `~/.` folder

## Install Dependencies

```
sudo apt-get -y update
sudo apt-get -y install cmatrix figlet fzf ripgrep tldr tmux jq stow tree zsh nodejs fd-find
# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo snap install docker
# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install more deps with cargo
cargo install difftastic 
```

add to install:
- `kubectl + autocomplete`
- `krew + kubectx kubens`
- `difftastic`
- `go`
  
## Install NeoVim
```
sudo apt-get install ninja-build \
     gettext libtool libtool-bin \
     autoconf automake cmake g++ \
     pkg-config unzip
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release install
```

## Stow
use the `setup-stow-folders` to stow the dotfiles to the home directory.

# TODO
- [ ] start a new
- [ ] use stow to stow the folder to the user root path (e.g. git -> ~)
- [ ] add ansible that install all dependencies: tmux, fdfind, ripgrep, fzf, difftastic, stow, cmatrix ...
- [ ] add ansible that install oh my zsh
- [ ] add ansible that build nvim
- [x] add a git folder with gitconfig
- [x] add zsh folder with profile and functions
- [x] add .local/scripts folder with custom scripts like tmux-sessionizer

# Set up new machine
- [ ] clone this repo
- [ ] install ansible
- [ ] run ansible playbook to install and build dependencies
- [ ] stow folders to user home (git, zsh, scripts)
- [ ] git clone init.nvim repo & install packer
