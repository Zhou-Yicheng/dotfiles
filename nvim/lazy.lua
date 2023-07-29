-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme

lazy.setup({
  spec = {

    {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-telescope/telescope-project.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'nvim-treesitter/nvim-treesitter-textobjects' },

    -- Indent line
    { 'lukas-reineke/indent-blankline.nvim' },

    -- Tag viewer
    { 'preservim/tagbar' },

    -- Autopair
    {
      'windwp/nvim-autopairs',
      event = 'InsertEnter',
      config = function()
        require('nvim-autopairs').setup()
      end
    },

    -- Installer
    {
      'williamboman/mason.nvim',
      build = ':MasonUpdate'
    },

    -- LSP
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },

    -- DAP
    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui' },

    -- Markdown
    { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },

    -- Autojump
    -- flash

    -- Autosuggest
    {
      'folke/which-key.nvim',
      event = 'VeryLazy',
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 333
      end,
      opts = {
      },
    },

    -- Autocomplete
    {
      'hrsh7th/nvim-cmp',
      -- load cmp on InsertEnter
      event = 'InsertEnter',
      -- these dependencies will only be loaded when cmp loads
      -- dependencies are always lazy-loaded unless specified otherwise
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
      },
    },

    -- Snippets
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
    },

    -- Norg
    {
      'nvim-neorg/neorg',
      build = ':Neorg sync-parsers',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/note",
                        },
                    },
                },
            },
        }
      end
    },

  },
})
