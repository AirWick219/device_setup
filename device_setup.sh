# Command line tools needed for pretty much everything
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create bash_profile
touch ~/.bash_profile

# Git
brew install git
git config --global github.user $(id -un)
git config --global credential.helper osxkeychain

# Tab completion
brew install bash-completion
echo "if [ -f `brew --prefix`/etc/bash_completion ]; then" >> ~/.bash_profile
echo "  . `brew --prefix`/etc/bash_completion" >> ~/.bash_profile
echo "fi" >> ~/.bash_profile

# Ruby
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash
source $HOME/.rvm/scripts/rvm
source ~/.bash_profile
rvm install ruby-3.0

# NodeJS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install lts/dubnium
brew install yarn

# MySQL
brew install mysql@5.6
brew services start mysql@5.6
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
mysql --version

# Docker
brew cask install docker

# Install apps
brew cask install google-chrome
brew cask install firefox
brew cask install visual-studio-code
brew cask install flycut
brew cask install gifox
brew cask install notion
brew cask install postman