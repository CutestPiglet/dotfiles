" Configuration file for vim
set modelines=0     " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" *********************************************
" Vbundle
" ********************************************
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
" Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
" Plugin 'dense-analysis/ale'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" *********************************************
" My vim setting
" *******s*************************************
syntax on

set encoding=utf-8
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set cursorline
set showmatch
set hlsearch
set incsearch

" enable folding with the spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" move to beginning/end of line
nnoremap B ^

" $/^ doesn't do anything
nnoremap ^ <nop>

" YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion=1

" NERDTree
" let NERDTreeIgnore=['\.pyc$', '\~$']
" nnoremap <silent> <F5> :NERDTree<CR>
