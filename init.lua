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

require('pckr').add{
  {
    'ggandor/leap.nvim',
    requires = 'tpope/vim-repeat',
    config = function()
      require('leap').add_default_mappings()
    end,
  };
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup()
      require('mini.comment').setup()
      require('mini.operators').setup()
      require('mini.pairs').setup()
      require('mini.splitjoin').setup()
      require('mini.surround').setup({
        mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
        }
      })
    end,
  };
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    requires = {
      { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    },
    config = function()
      require('nvim-treesitter.configs').setup {
        indent = { enable = true },
        -- Install the parsers for the languages you want to comment in
        ensure_installed = {
          'astro', 'css', 'glimmer', 'graphql', 'html', 'javascript',
          'lua', 'php', 'python', 'scss', 'svelte', 'tsx', 'twig',
          'typescript', 'vim',
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
      }
    end,
  };
}
