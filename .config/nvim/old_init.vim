set undofile
set encoding=utf-8
set autochdir
set ignorecase
set number
set conceallevel=1
set background=dark
set termguicolors
set expandtab
set splitbelow
set relativenumber
set autoindent
set smartindent
syntax on
filetype plugin indent on
set undodir=~/.config/nvim/undodir
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
let mapleader = " "
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'
Plug 'luochen1990/rainbow'
Plug 'chrisbra/Colorizer'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'Neevash/awesome-flutter-snippets'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-which-key'
call plug#end()
colorscheme dracula
"Dart Stuff

let g:dart_format_on_save = 1
autocmd CompleteDone * silent! pclose
"
let g:lsc_auto_map = {'defaults': v:true} 
let g:syntastic_check_on_open=1

"Nerdtree Config
map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"Gitgutter Config
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✚'
let g:gitgutter_sign_removed = '✖'
let g:gitgutter_sign_removed_first_line = '✖'
let g:gitgutter_sign_removed_above_and_below = '✖'
let g:gitgutter_sign_modified_removed = '✖'
" Theme for airline:
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Colorize Hex patterns into colors
let g:colorizer_auto_filetype='css,html,dart,vim'
" Rainbow brackets
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" Load all pPlugin 'yuttie/comfortable-motion.vim'lugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
