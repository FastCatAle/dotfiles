" ---Settings
set nocompatible
set hidden

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Interface
syntax on
set number
set numberwidth=4
set splitbelow
set splitright
set nowrap
set cursorline
set scrolloff=8
set wildmenu
set laststatus=2
set showmode
set colorcolumn=80

" ---Keymaps
let mapleader = " "
map <leader>p :Ex<Cr>
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

" ---Colorscheme
set t_Co=256
set termguicolors
set background=dark
"colorscheme ayu
