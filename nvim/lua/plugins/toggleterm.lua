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
    { '<leader>tt', '<CMD>ToggleTerm<CR>', desc = 'Toogle Terminal' },
  },
  config = true,
}
