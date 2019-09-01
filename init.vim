" Eduardo Spagiari
" NeoVim Dev Enviroment

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
"Prettier
Plug 'prettier/vim-prettier', { 
			\ 'do': 'yarn install',  
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Auto Complete
Plug 'roxma/nvim-completion-manager'
" File navigation Bar
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Git shotcut
Plug 'tpope/vim-fugitive'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Terminal Vim with 256 colors colorscheme
Plug 'fisadev/fisa-vim-colorscheme'
" Tab list panel
Plug 'kien/tabman.vim'
" Python autocompletion, go to definition.
Plug 'davidhalter/jedi-vim'
" Automatically sort python imports
Plug 'fisadev/vim-isort'
" Class/module browser
Plug 'majutsushi/tagbar'
" Gvim colorscheme
" Plug 'vim-scripts/Wombat'
" One colorscheme
" Plug 'joshdick/onedark.vim' 
Plug 'nanotech/jellybeans.vim'
" SqlUtilities
Plug 'vim-scripts/SQLUtilities'
Plug 'vim-scripts/Align'
" Pep8
Plug 'tell-k/vim-autopep8'
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
Plug 'iCyMind/NeoSolarized'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
call plug#end()

" colors for gvim
" colorscheme wombat
" colorscheme gruvbox
set termguicolors
colorscheme NeoSolarized
set background=dark
let g:airline_theme='onedark'

set hidden
set number
set relativenumber
"set mouse=a
set inccommand=split

let mapleader="\\"
nnoremap <leader>; A;<esc>
nnoremap <leader>ec :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>lc :source ~/.config/nvim/init.vim<cr>

noremap <C-d> :Files<cr>
noremap <C-f> :Ag<space>
noremap <C-b> :NERDTreeToggle<CR>

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" ALE
let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let python_highlight_all=1

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.py\~$']

" Airline ------------------------------

let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#enabled = 0

"Clipboard
set clipboard=unnamed

" Ignore case
set ignorecase

" NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Prettier
let g:prettier#config#tab_width = 4
