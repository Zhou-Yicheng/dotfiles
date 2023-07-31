return {
  'nvim-neorg/neorg',
  ft = 'norg',
  dependencies = {
    'hotoo/pangu.vim',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.concealer'] = {},
    },
  },
}