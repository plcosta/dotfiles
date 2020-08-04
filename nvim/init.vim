let g:python3_host_prog = '/Users/pedro.costa/.asdf/shims/python'
let g:python_host_prog='/Users/pedro.costa/.asdf/shims/python2'
let g:ruby_host_prog = '/Users/pedro.costa/.rbenv/shims/neovim-ruby-host'

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'wakatime/vim-wakatime'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.dotfiles/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.dotfiles/nvim/init.vim<cr>

nnoremap <leader>p :Files<cr>
nnoremap <c-p> :Files<cr>

nnoremap <leader>f :Ag<space>
nnoremap <c-f> :Ag<space>

