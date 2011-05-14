files=( bash_profile profile irbrc alias vimrc git-completion.sh )

for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -s $PWD/$filename ~/.$filename
done

source ~/.bash_profile
