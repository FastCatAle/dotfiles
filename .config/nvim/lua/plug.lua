local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('rose-pine/neovim', {['as'] = 'rose-pine'})
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('echasnovski/mini.pairs')

vim.call('plug#end')

require("plugins/treesitter")
require("plugins/rosepine")
require("plugins/lsp")
require("mini.pairs").setup {}
