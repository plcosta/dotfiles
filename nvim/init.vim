let g:python3_host_prog = '/Users/pedro.costa/.asdf/shims/python'
let g:python_host_prog='/Users/pedro.costa/.asdf/shims/python2'

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'wakatime/vim-wakatime'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'APZelos/blamer.nvim'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'dense-analysis/ale'
call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let mapleader=","
filetype plugin on
colorscheme gruvbox
set background=dark
set completeopt=noinsert,menuone,noselect
set mouse=a
set inccommand=split

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
let &colorcolumn="80,".join(range(119,999),",")
" }}} UI Config

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" File Format {{{
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
" }}}

" buffers
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>bd :bd<CR>

noremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.dotfiles/nvim/init.vim<cr>
nnoremap <leader>sv source ~/.dotfiles/nvim/init.vim<cr>

nnoremap <leader>p :Files<cr>
nnoremap <c-p> :Files<cr>

nnoremap <leader>f :Ag<space>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir="~/.dotfiles/nvim/UltiSnips"

" NerdTree Settings {{{
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['node_modules']
let NERDTreeMapOpenInTab='\r'
" ]}}
