" vim-plugin
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'nightsense/cosmic_latte'
Plug 'kaicataldo/material.vim'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

call plug#end()

" set True Colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" General SetUp
set nocompatible
let mapleader=","
set showmode
set number
set ruler
set wildmenu
set showcmd
set showmatch
set mouse=a
set encoding=utf-8

" No backups
set noswapfile
set nobackup

" UX and Syntax highlighting
set background=dark
colorscheme cosmic_latte
"let g:material_theme_style = 'default'
"let g:material_terminal_italics = 1
"let g:airline_theme = 'material'
let g:lightline = { 'colorscheme': 'cosmic_latte_dark' }
set laststatus=2
syntax on

" Quickly open/reload vimrc
nnoremap <silent> <leader>ev :vsplit /Users/fahadmohammad/.vimrc<cr>
nnoremap <silent> <leader>rcv :source /Users/fahadmohammad/.vimrc<cr>

" Save file as sudo
nnoremap ws :w !sudo tee %<cr>

" Search
set hlsearch
set incsearch

" Tabs/ Spaces
set tabstop=4 "tab is four spaces
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set copyindent
set expandtab
set belloff=all
set nowrap
set statusline+=%F\ %l\:%c

" remove highlights
nnoremap <leader><space> :noh<cr>

" Movement
nnoremap j gj
nnoremap k gk

" cursor settings
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
