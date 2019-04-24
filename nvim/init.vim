
call plug#begin('~/.config/nvim/plugged')
" Plug 'roxma/nvim-completion-manager'
Plug 'davidhalter/jedi-vim'   " jedi for python
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2' "neovim autocompletion
Plug 'HansPinckaers/ncm2-jedi' "Python autocomplete
Plug 'ncm2/ncm2-bufword' "Words in buffer completion
Plug 'ncm2/ncm2-path' "Filepath completion

Plug 'scrooloose/nerdtree'  " file list
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter
Plug 'jonathanfilip/vim-lucius'
Plug 'tpope/vim-surround'

"python
Plug 'tweekmonster/impsort.vim'  " color and sort imports
Plug 'w0rp/ale'  " python linters

call plug#end()

" Color & Customization
colorscheme lucius
LuciusDark
"" LuciusBlack, LuciusDark, LuciusLight


""" My personal settings
if has('mouse')
  set mouse=a
endif
set t_Co=256
set nu  "Display line numbers
set guioptions-=T "turn off toolbar
"set nocompatible
set incsearch		" do incremental searching
set pastetoggle=<F2>
set hidden
filetype indent on
" Linewrap up/down
nnoremap j gj
nnoremap k gk
"Show tabs and trailing whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
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

""" Plugin Options

"" Airline
"let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 1
" let g:airline_theme="tomorrow"
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

" ncm2 settings
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
" make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
set pumheight=5
" tab complete
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent> <expr> <CR> (pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : "\<CR>"

" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'
" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

" ale options
let g:ale_python_flake8_options = '--ignore=E129,E501,E302,E265,E241,E305,E402,W503'
let g:ale_python_pylint_options = '-j 0 --max-line-length=120 --errors-only'
let g:ale_linters = {'python': ['pylint']}
let g:ale_list_window_size = 4
let g:ale_sign_column_always = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
" Options are in .pylintrc!
highlight VertSplit ctermbg=253
let g:ale_echo_cursor = 1
let g:ale_sign_error = '‼'
let g:ale_sign_warning = '∙'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
"nmap <silent> <C-M> <Plug>(ale_previous_wrap)
"nmap <silent> <C-m> <Plug>(ale_next_wrap)

"nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=2

