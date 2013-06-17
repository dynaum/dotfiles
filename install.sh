files=( bash_profile profile irbrc alias vimrc screenrc git-completion.sh gitconfig zshrc tmux.conf awsenv.sh )

for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -s $PWD/$filename ~/.$filename
done

source ~/.bash_profile
