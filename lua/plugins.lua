-- Plugins list export

-- 1. Plugin manager
local packer = 'wbthomason/packer.nvim'
-- 2. Core / utils
local plenary = 'nvim-lua/plenary.nvim'
local treesitter = 'nvim-treesitter/nvim-treesiter'
-- 3. UI improvment
local gruvbox = 'gruvbox-community/gruvbox'
local web_dev_icons = 'kyazdani42/nvim-web-devicons'
local lualine = 'nvim-lualine/lualine.nvim'
-- 4. Autocompletion
local completion = 'hrsh7th/nvim-cmp'
local lsp_completion = 'hrsh7th/cmp-nvim-lsp'
local buffer_completion = 'hrsh7th/cmp-buffer'
local path_completion = 'hrsh7th/cmp-path'
local snippet_completion = 'saadparwaiz1/cmp_luasnip'
-- 5. File search / Fuzzy finder
local telescope = 'nvim-telescope/telescope.nvim'
-- 6. File explorer
local nvim_tree = 'nvim-tree/nvim-tree.lua'
-- 7. LSP (Language Server Protocol)
local lsp_config = 'neovim/nvim-lspconfig'
local mason = 'williamboman/mason.nvim'
local mason_lsp_config = 'williamboman/mason-lspconfig.nvim'
-- 8. Snippets
local luasnip = 'L3MON4d3/LuaSnip'
-- 9. Git
local fugitive = 'tpope/vim-fugitive'
-- 10. Start screen
local alpha = 'goolord/alpha-nvim'
-- 11. Formatter
local conform = 'stevearc/conform.nvim'

return {
    packer,
    plenary,
    gruvbox,
    web_dev_icons,
    lualine,
    completion,
    lsp_completion,
    buffer_completion,
    path_completion,
    snippet_completion,
    telescope,
    nvim_tree,
    lsp_config,
    mason,
    mason_lsp_config,
    luasnip,
    fugitive,
    alpha,
    conform
}

