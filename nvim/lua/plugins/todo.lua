return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>td', '<CMD>TodoTelescope<CR>', desc = 'Open todo using telescope' },
  },
  opts = {},
}
