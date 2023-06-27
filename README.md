# .dotfiles

## Clone Repo
Download this repo in the `~/.` folder
with submodule `git submodule update --init`

## Install Dependencies

```
sudo apt-get -y update
sudo apt-get -y install cmatrix figlet fzf ripgrep tldr tmux jq stow tree zsh nodejs fd-find
# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# OH MY ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo snap install docker
# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install more deps with cargo
cargo install difftastic
# Kubernetes
sudo snap install kubectl --classic
mkdir -p ~/.oh-my-zsh/custom/plugins/kubectl-autocomplete/
kubectl completion zsh > ~/.oh-my-zsh/custom/plugins/kubectl-autocomplete/kubectl-autocomplete.plugin.zsh
# Install Krew
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
kubectl krew install ctx
kubectl krew install ns
# Github CLI
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```

add to install:
- `k9s`
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

# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
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
