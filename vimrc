" VIM-PLUGIN
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'nightsense/cosmic_latte'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'valloric/youcompleteme'
call plug#end()

" SET TRUE COLORS
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

" GENERAL SETUP
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
set backspace=indent,eol,start

" NO BACKUPS
set noswapfile
set nobackup

" UX AND SYNTAX HIGHLIGHTING
set background=dark
colorscheme cosmic_latte
let g:lightline = { 'colorscheme': 'cosmic_latte_dark' }
set laststatus=2
syntax on

" QUICKLY OPEN/RELOAD VIMRC
nnoremap <silent> <leader>ev :vsplit /Users/fahadmohammad/.vimrc<cr>
nnoremap <silent> <leader>rcv :source /Users/fahadmohammad/.vimrc<cr>

" SAVE FILE AS SUDO
nnoremap ws :w !sudo tee %<cr>

" SEARCH
set hlsearch
set incsearch

" TABS/ SPACES
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

" REMOVE HIGHLIGHTS
nnoremap <leader><space> :noh<cr>

" MOVEMENT
nnoremap j gj
nnoremap k gk

" CURSOR SETTINGS
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" HIGHLIGHT WHITESPACE
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * %s/\s\+$//e " Removes whitespace on save

" NERDTREE TOGGLE
map <C-o> :NERDTreeToggle<CR>

" set CTAGS
set tags=./tags,tags;
