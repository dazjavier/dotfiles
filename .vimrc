call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'neoclide/vim-jsx-improve'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
call plug#end()

set relativenumber
set termguicolors
set noerrorbells
set showcmd
set noswapfile
set nobackup
set nowritebackup
set splitright
set splitbelow
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=UTF-8
let mapleader = ","
let g:mapleader = ","
inoremap kj <Esc>
cnoremap kj <Esc>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-p> :Files<CR>
let g:coc_disable_startup_warning = 1
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
set hidden
set cmdheight=2
set shortmess=aFc
set updatetime=50
set shortmess+=c
set colorcolumn=120
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map q: :q
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>
nmap <leader>w :w!<cr>
nnoremap <leader>a :cclose<CR>
nnoremap <silent> <leader>q :Sayonara<CR>
nnoremap n nzzzv
nnoremap N Nzzzv
"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

colorscheme OceanicNext

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
