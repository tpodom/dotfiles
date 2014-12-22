# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/bin/z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh > ~/bin/z/z.sh
chmod +x ~/bin/z/z.sh

sudo easy_install Pygments
mkdir -p ~/.bash_completion.d
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.bash_completion.d/git-completion.bash
curl https://raw.githubusercontent.com/petervanderdoes/git-flow-completion/develop/git-flow-completion.bash > ~/.bash_completion.d/git-flow-completion.bash

