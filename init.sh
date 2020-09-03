# install vundle
VUNDLE=~/.vim/bundle/vundle

if [ ! -d $VUNDLE ]; 
then
    git clone https://github.com/gmarik/vundle.git $VUNDLE
fi
