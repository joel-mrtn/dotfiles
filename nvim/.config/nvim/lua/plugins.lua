-- add lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- add plugins
require('lazy').setup({
    -- color theme
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    -- statusline
    'nvim-lualine/lualine.nvim',
    -- undo tree
    'mbbill/undotree',
    -- tabstop and shiftwidth detection
    'tpope/vim-sleuth',
    -- git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    -- indentation guides
    'lukas-reineke/indent-blankline.nvim',

    {
        -- fuzzy finder
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    {
        -- code parsing
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
        build = ':TSUpdate',
    },

    {
        -- LSP
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'rafamadriz/friendly-snippets' },
            -- status updates
            { 'j-hui/fidget.nvim', tag = 'legacy', event = 'LspAttach' },
            -- additional lua config
            { 'folke/neodev.nvim' },
            -- additional rust config
            { 'simrat39/rust-tools.nvim' },
        }
    }
})
