# install these packages: git neovim zsh

# to install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# to enable zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# for i3

zypper install nitrogren # A background browser and setter for X windows
zypper install redshift-gtk
zypper install rxvt-unicode
zypper install scrot     # A screenshot tool
zypper install rofi
sudo pip install py3status
