#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2
brew install zsh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

brew tap caskroom/versions
brew cask install java

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew link --overwrite gnupg
brew install pinentry-mac
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install mosh
brew install tmux
brew install python
brew install python@2
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew install fontconfig
brew tap caskroom/fonts
brew cask install font-fontawesome
brew cask install font-awesome-terminal-fonts
brew cask install font-hack
brew cask install font-inconsolata-dz-for-powerline
brew cask install font-inconsolata-g-for-powerline
brew cask install font-inconsolata-for-powerline
brew cask install font-roboto-mono
brew cask install font-roboto-mono-for-powerline
brew cask install font-source-code-pro

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install binutils
brew install binwalk
brew install nmap
brew install pngcheck
brew install socat
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install httpie
brew install imagemagick --with-webp
brew install jq
brew install kubernetes-cli
brew install kubernetes-helm
brew install lua
brew install maven
brew install nvm
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install sox
brew install tree
brew install vbindiff
brew install zopfli

kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl

# Remove outdated versions from the cellar.
brew cleanup
