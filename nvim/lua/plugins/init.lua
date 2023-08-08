local name = 'everforest'

local M = {}

M['rose-pine'] = {
  'rose-pine/neovim',
  name = name,
  lazy = false,
  config = function()
    vim.cmd('colorscheme ' .. name)
  end,
}

M['everforest'] = {
  'sainnhe/everforest',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  config = function()
    vim.opt.background = 'light'
    -- Available values: 'hard', 'medium'(default), 'soft'
    vim.g.everforest_background = 'soft'
    -- For better performance
    vim.g.everforest_better_performance = 1

    vim.cmd('colorscheme ' .. name)
  end,
}

return M[name]
