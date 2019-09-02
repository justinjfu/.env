" Source this file in .vimrc : ex. source ~/.env/.vimrc

" Init Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
"" Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" Plugin 'vim-syntastic/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'ervandu/supertab'
Plugin 'file:///~/.vim/bundle/justin_mods'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"My settings
if has('mouse')
  set mouse=a
endif
set t_Co=256
set nu
set guioptions-=T "turn off toolbar
set nocompatible
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set pastetoggle=<F2>
set hidden
nnoremap ; :

set modelines=1

" Linewrap up/down
nnoremap j gj
nnoremap k gk

" Window Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"nnoremap <2-LeftMouse> :exe "tag ". expand("<cword>")<CR>

"Preview Window - Set height and autoclose
set previewheight=6
"autocmd CompleteDone * pclose

"Show tabs and trailing whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set autoindent

" Tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

"Make finds center on screen
nnoremap n nzz 
nnoremap N Nzz 
set directory=~/.vim/swp
set backupdir=~/.vim/swp

"Plugins
"NERDTree
let g:NERDTreeMouseMode=2
let g:NERDTreeCustomTabOpen=1
command NT NERDTreeTabsOpen

"" Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#bufferline#enabled = 1
let g:airline_theme="tomorrow"
"set guifont=Liberation_Mono_for_Powerline:10 
" let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif
set laststatus=2  " Enable airline by default

" Color & Customization
colorscheme Tomorrow-Night-Justin

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")


if system("echo -n \"$(uname)\"") == "Darwin"
    "Copy/Pasting on Mac
    map <C-v> :r !pbpaste<CR>
    map <C-c> :w !pbcopy<CR><CR>
endif
 
