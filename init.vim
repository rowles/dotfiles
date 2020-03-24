call plug#begin('~/.config/nvim/plugs')

Plug 'sjl/badwolf'

Plug 'vim-syntastic/syntastic'

Plug 'machakann/vim-highlightedyank'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'


" fzf

Plug 'dense-analysis/ale'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'for': ['typescript', 'tsx'], 'do': './install.sh' }


Plug 'autozimu/LanguageClient-neovim', {
   \ 'branch': 'next',
   \ 'do': 'bash install.sh',
   \ }

call plug#end()


"autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
"autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

""""""""
"

let g:highlightedyank_highlight_duration = 1000


""""""""
" NerdTree

set hidden

let g:LanguageClient_serverCommands = {
    \ 'python': ['~/.local/bin/pyls'],
    \ }

""""""""
" NerdTree

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
  if &modifiable & IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

autocmd BufEnter & call SyncTree()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-n> :NERDTreeToggle<CR>


""""""
" ncm2

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Tab selects for pop up
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

""""""
" vim

colorscheme badwolf

set mouse=a

syntax on
filetype plugin indent on

set nocompatible
set number
set showmode

set smartcase
set smarttab
set smartindent
set autoindent
set expandtab

set shiftwidth=2
set softtabstop=2

set background=dark
set laststatus=0

set splitbelow
set splitright

set relativenumber
set rnu

