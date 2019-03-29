set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim.git'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-haml'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'flowtype/vim-flow'
Plugin 'slashmili/alchemist.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'joker1007/vim-ruby-heredoc-syntax'
Plugin 'svermeulen/vim-easyclip'

" Snipmate stuff
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional
Plugin 'honza/vim-snippets'

call vundle#end()

" Set Leader to ,
let mapleader=","

" Removes all trailing spaces with Leader-ts
nnoremap <Leader>ts :%s/\s\+$//<CR>

" Adds a dot to trailing spaces and tabs
set listchars=tab:»·,trail:·
set list

" Airline tabline enabled
let g:airline#extensions#tabline#enabled = 1

" Let Nerd Commenter comment empty lines
let g:NERDCommentEmptyLines = 1

" JSX highlighting
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Configure syntastic for ESLint
let g:syntastic_javascript_checkers = ['eslint']

set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start
syntax enable
filetype plugin on
colo peachpuff
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set swapfile
set dir=~/tmp
set number
set autoindent
"set statusline+=%F
set wildmode=longest,list,full
set wildmenu

" Fixes tmux pane dependent clipboard
set clipboard=unnamed,unnamedplus
noremap ty "+y
noremap tY "+Y
noremap tp "+p
noremap tP "+P

set cursorline
" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Hack to fix ruby syntax highlighting lag
set lazyredraw

" Set scrolloff to keep lines above and below when scrolling
set scrolloff=20

" Set regex engine to 1 (not sure what this does but it helps with lag due to
" ruby syntax highlighting
set re=1

" Set better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" sets F8 to open Tagbar
nmap <F8> :TagbarToggle<CR>

" Automatically remove trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

