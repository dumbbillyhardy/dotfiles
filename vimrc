unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
set exrc
set autoindent
set si
set shiftwidth=4
set relativenumber
colorscheme monokai
" Don't try to be vi compatible
set nocompatible
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
set ft=html.javascript

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=160
"set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set noshiftround

" Insert Mapping
:imap jk <esc>

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Splitting
set splitbelow
set splitright

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
map <leader>n :sp<CR>
map <leader>v :vs<CR>
map <leader>x :q<CR>
nnoremap n nzzzv
nnoremap N Nzzzv

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Eclim Settings/Config
set nocompatible
filetype plugin indent on


" Textmate holdouts

" Formatting
"map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

call plug#begin('~/.vim/plugged')
" General
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'

" Go
Plug 'fatih/vim-go', { 'tag': '*' }

" JS
"Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mattn/emmet-vim'

" Git
Plug 'tpope/vim-fugitive'

call plug#end()

let g:fzf_command_prefix = ''

" TernJS html support
set omnifunc=tern#Complete
"set ft=html.javascript_tern
set ft=html.javascript

map <C-h> :NERDTreeToggle<CR>

let g:javascript_plugin_jsdoc = 1
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" reload vimrc whenever I save it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost vimrc,.vimrc,*.vim source $MYVIMRC
augroup END " }
" disable syntax highlighting on massive files
augroup big_files
    autocmd!
    autocmd Filetype * if (getfsize(@%) > 1000000) | setlocal syntax=OFF | endif
    " autocmd Filetype * :echom "a"
augroup END

" Key Bindings
  " insert mode shortcuts
    " normal mode shortucts
    :let mapleader = " "
    :nmap <Leader><Leader> :w<Enter>
    :nmap <Leader>sw "zyiw:Ag z

" FZF
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
          \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
          \ fzf#wrap({'dir': expand('%:p:h')}))
nmap <C-p> :Files<enter>

nmap <C-k> :Buffers<enter>

" Eclim
nmap <c-c><c-g> :JavaCallHierarchy<enter>
nmap <c-c><c-h> :JavaHierarchy<enter>
nmap <c-c><c-i> :JavaImpl<enter>
nmap <c-c><c-r> :JavaRename 
nmap <c-c>i :JavaImportOrganize<cr>
