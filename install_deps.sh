# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/bin/z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh > ~/bin/z/z.sh
chmod +x ~/bin/z/z.sh

mkdir -p ~/.bash_completion.d

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

pip install virtualenv
\curl -sSL https://get.rvm.io | bash -s stable --ruby
