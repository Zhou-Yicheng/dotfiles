vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamedplus'

local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

if not vim.loop.fs_stat(pckr_path) then
  vim.fn.system({
    'git',
    'clone',
    "--filter=blob:none",
    'https://github.com/lewis6991/pckr.nvim',
    pckr_path
  })
end

vim.opt.rtp:prepend(pckr_path)

local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')
require('pckr').add {
  {
    'ellisonleao/glow.nvim',
    cond = cmd('Glow'),
    config = 'glow',
  },
  {
    'folke/flash.nvim',
    cond = {
      keys({ 'n', 'x', 'o' }, 's', function() require('flash').jump() end, { desc = 'Flash' }),
      keys({ 'n', 'x', 'o' }, 'S', function() require('flash').treesitter() end, { desc = 'Flash Treesitter' }),
      keys({ 'o' }, 'r', function() require('flash').remote() end, { desc = 'Remote Flash' }),
      keys({ 'o', 'x' }, 'R', function() require('flash').treesitter_search() end, { desc = 'Treesitter Search' }),
      keys({ 'c' }, '<c-s>', function() require('flash').toggle() end, { desc = 'Toggle Flash Search' }),
    },
  },
  {
    'echasnovski/mini.nvim',
    config = function()
      local mods = { 'ai', 'comment', 'operators', 'pairs', 'splitjoin' }
      for _, mod in pairs(mods) do
        require('mini.' .. mod).setup()
      end
      require('mini.surround').setup({
        mappings = {
          add = "gsa",            -- Add surrounding in Normal and Visual modes
          delete = "gsd",         -- Delete surrounding
          find = "gsf",           -- Find surrounding (to the right)
          find_left = "gsF",      -- Find surrounding (to the left)
          highlight = "gsh",      -- Highlight surrounding
          replace = "gsr",        -- Replace surrounding
          update_n_lines = "gsn", -- Update `n_lines`
        }
      })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = not (vim.g.vscode) },
        indent = { enable = true },
        ensure_installed = {
          'astro', 'css', 'glimmer', 'graphql', 'html', 'javascript',
          'lua', 'php', 'python', 'scss', 'svelte', 'tsx', 'twig',
          'typescript', 'vim',
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
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
    'JoosepAlviste/nvim-ts-context-commentstring',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('ts_context_commentstring').setup({
        enable_autucmd = false,
      })
    end,
  },
}
