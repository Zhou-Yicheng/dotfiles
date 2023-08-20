theme = 'tokyonight'

local config = function() vim.cmd('colorscheme ' .. theme) end

local M = {}

M['rose-pine'] = {
  'rose-pine/neovim',
  name = theme,
  lazy = false,
  config = config,
}

M['everforest'] = {
  'sainnhe/everforest',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  init = function()
    vim.opt.background = 'light'
    -- Available values: 'hard', 'medium'(default), 'soft'
    vim.g.everforest_background = 'soft'
    -- For better performance
    vim.g.everforest_better_performance = 1
  end,
  config = config,
}

M['tokyonight'] = {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = config,
}

return M[theme]
