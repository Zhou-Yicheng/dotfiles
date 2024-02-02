vim.opt.timeoutlen = 333
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamedplus'

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'git@github.com:folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  git = {
    url_format = "git@github.com:%s",
  },
}

local plugins = {
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "gs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
},
{
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup()
    require('mini.comment').setup()
    require('mini.pairs').setup()
    require('mini.splitjoin').setup() -- gS
    require('mini.surround').setup()	-- sa sr sd
    require('mini.operators').setup() -- g= gx gm gr
  end
},
{
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = false },
        ensure_installed = {
          'css', 'glimmer', 'html', 'javascript',
          'lua', 'php', 'python', 'scss', 'tsx', 'twig',
          'typescript', 'vim',
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<A-space>',
            node_incremental = '<A-space>',
            scope_incremental = false,
            node_decremental = '<bs>',
          },
        },
        textobjects = {
          move = {
            enable = true,
            goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
            goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
            goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
            goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
          },
        },
      })
    end
},
{
	"ThePrimeagen/refactoring.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = true,
},
}

require('lazy').setup(plugins, opts)
