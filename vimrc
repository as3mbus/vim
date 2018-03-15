" The ArchLinux global vimrc - setting only a few sane defaults
"
" Maintainer:      Thomas Dziedzic [gostrc@gmail.com]
"
" NEVER EDIT THIS FILE, IT'S OVERWRITTEN UPON UPGRADES, GLOBAL CONFIGURATION
" SHALL BE DONE IN /etc/vimrc, USER SPECIFIC CONFIGURATION IN ~/.vimrc

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing

" Now we set some defaults for the editor
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif
" set incremental search, highlight search and ignore case for searching
set is hlsearch ic
" show relative line number and line number for currentline 
set relativenumber number
" change tabs to 4 space
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
syntax on
" add .Xresources Extension for managing xresource in multiple file
filetype on
au BufNewFile,BufRead */.Xresources.d/* set filetype=xdefaults
" set dark background to highlight text with light color
set background=dark

" Vim-Plug call
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
