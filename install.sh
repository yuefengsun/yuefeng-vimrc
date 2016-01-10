#!/bin/sh

install_vimrc()
{
        if [ -a $HOME/.vim ]; then
                echo "Backup .vim"
                mv $HOME/.vim $HOME/.vim_bck
        fi
        if [ -a $HOME/.vimrc ]; then
                echo "Backup .vimrc"
                mv $HOME/.vimrc $HOME/.vimrc_bck
        fi

        ln -s $PWD $HOME/.vim
        ln -s $PWD/vimrc $HOME/.vimrc
}

xrsh_get_osname()
{
        uname -s
}

xrsh_cvt_osname()
{
        local _xrsh_tmp=$1

        case $_xrsh_tmp in
                Linux)        _xrsh_tmp=linux      ;;
                Darwin)       _xrsh_tmp=osx        ;;
                *) echo "Sorry, Only Support Linux or OSX!" ;;
        esac
        echo $_xrsh_tmp
}

install_cscope()
{
        echo "Install cscope.."
        if [ $1 == "linux" ]; then
                sudo apt-get install cscope
        fi
        if [ $1 == "osx" ]; then
                sudo brew install cscope
        fi
}

install_ctags()
{
        echo "Install ctags.."
        if [ $1 == "linux" ]; then
                sudo apt-get install ctags
        fi
        if [ $1 == "osx" ]; then
                sudo brew install ctags
        fi
}

install_vundle()
{
        echo "Install vundle.."
        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
}

os=$(xrsh_get_osname)
os=$(xrsh_cvt_osname $os)


install_vimrc
install_cscope $os
install_ctags $os
#install_vundle

