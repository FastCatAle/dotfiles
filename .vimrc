" Settings
set nocompatible
syntax on
set number
set numberwidth=4
set nowrap
set cursorline
set shiftwidth=4
set tabstop=4
set scrolloff=5
set wildmenu
set laststatus=2
"set noshowmode
set colorcolumn=80

" Keymaps
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" Colorscheme
set termguicolors
set background=dark
"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark='hard'
colorscheme ayu

" Plugins
call plug#begin()

"Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'rhysd/vim-lsp-ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()

" Configurations
"let g:lightline={'colorscheme': 'gruvbox'}
