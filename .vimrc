" iMproved
set nocompatible
" required by vundle
filetype off

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

" Vundle Tutorial
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Enable UTF-8
scriptencoding utf-8
set encoding=utf-8
set mouse=a
set backspace=indent,eol,start

" Set auto update when file is changed from outside
set autoread

" Editor 
syntax on " enable syntax highlighting
set number " show line numbers
set showmode " show vim mode
colorscheme badwolf
set wildmenu            " visual autocomplete for command menu

" Height of the command bar
set cmdheight=2

" Highlight search results
set hlsearch

" Add a bit extra margin to the left
set foldcolumn=1

" Indentation
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"  => Status line
" " Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" show newline chars
set list
set listchars=tab:▸\ ,eol:¬

" Filetype plugins
filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
"set list listchars=tab:»·,trail:·

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" 
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction
