return {
  'akinsho/toggleterm.nvim',
  cmd = {
    'ToggleTerm',
    'ToggleTermSetName',
    'ToggleTermToggleAll',
    'ToggleTermSendVisualLines',
    'ToggleTermSendCurrentLine',
    'ToggleTermSendVisualSelection',
  },
  keys = {
    { '<leader><leader>', '<CMD>ToggleTerm<CR>', desc = 'Toogle Terminal' },
    { mode = 't', 'jk', [[<C-\><C-n>]] },
    { mode = 't', 'kj', [[<C-\><C-n>]] },
    { mode = 't', '<C-h>', [[<CMD>wincmd h<CR>]] },
    { mode = 't', '<C-j>', [[<CMD>wincmd j<CR>]] },
    { mode = 't', '<C-k>', [[<CMD>wincmd k<CR>]] },
    { mode = 't', '<C-l>', [[<CMD>wincmd l<CR>]] },
  },
  opts = {
    direction = 'float',
  }
}
