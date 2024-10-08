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
set scrolloff=5
set wildmenu
set laststatus=2
set showmode
set colorcolumn=80

" ---Keymaps
let mapleader = " "
map <leader>p :Ex<Cr>
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

" Asyncomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" ---Colorscheme
set termguicolors
set background=dark
"colorscheme monokai

" ---Plugins
call plug#begin()

"Plug 'itchyny/lightline.vim'
Plug 'rose-pine/vim'
"Plug 'sheerun/vim-polyglot'
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

" ---Plugin configurations
colorscheme rosepine

" vim-lsp
let g:lsp_semantic_enabled = 1

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-remote=auto']},
        \ 'allowlist': ['go', 'gomod', 'gohtmltmpl', 'gotexttmpl'],
        \ })
    autocmd BufWritePre *.go
        \ call execute('LspDocumentFormatSync') |
        \ call execute('LspCodeActionSync source.organizeImports')
endif
