# tmux
sudo apt install tmux

# bazel
sudo apt-get install openjdk-8-jdk
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -

sudo apt-get update && sudo apt-get install bazel

# rust
curl https://sh.rustup.rs -sSf | sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
## install latest version
nvm install node

# vim

##plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

##YouCompleteMe (and dependencies)
sudo apt install build-essential cmake vim python3-dev
(cd .vim/plugged/YouCompleteMe; python3 install.py --all)
