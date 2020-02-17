files=( bash_profile profile irbrc alias vimrc screenrc git-completion.sh gitconfig zshrc tmux.conf awsenv.sh kube.sh )

for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -s $PWD/$filename ~/.$filename
done

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install tmux git postgres kafka fzf pyenv rbenv htop tig tree terraform the_silver_searcher

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

source ~/.bash_profile
