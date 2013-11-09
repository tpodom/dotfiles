# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/bin/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/bin/z/z.sh
chmod +x ~/bin/z/z.sh

sudo easy_install Pygments
mkdir -p ~/.bash_completion.d
curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash > ~/.bash_completion.d/git-completion.bash

