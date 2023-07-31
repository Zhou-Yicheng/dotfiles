local rose = {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  config = function()
    vim.cmd('colorscheme rose-pine')
  end,
}

local forest = {
  'sainnhe/everforest',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  config = function()
    vim.opt.background = 'light'
    -- Available values: 'hard', 'medium'(default), 'soft'
    vim.g.everforest_background = 'soft'
    -- For better performance
    vim.g.everforest_better_performance = 1

    vim.cmd('colorscheme everforest')
  end,
}

return forest