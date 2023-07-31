return {
  'nvim-lualine/lualine.nvim',
  event = { 'BufReadPost', 'BufAdd', 'BufNewFile' },
  opts = {
    options = { theme = 'everforest' }
  },
}
