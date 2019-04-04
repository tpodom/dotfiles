/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./brew.sh

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [[ ! -d "$HOME/oh-my-zsh/custom/themes/powerlevel9k" ]]; then
  git clone https://github.com/bhilburn/powerlevel9k.git $HOME/oh-my-zsh/custom/themes/powerlevel9k
fi

pip3 install --upgrade pip setuptools
pip2 install --upgrade pip setuptools
pip2 install virtualenv
pip3 install pygments --upgrade
pip3 install awscli --upgrade --user

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable --ruby
wget -qO- https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-228.0.0-darwin-x86_64.tar.gz | tar xvz -C $HOME/