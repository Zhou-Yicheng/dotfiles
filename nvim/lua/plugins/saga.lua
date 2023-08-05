return {
  'nvimdev/lspsaga.nvim',
  event = 'LspAttach',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('lspsaga').setup()
  end
}
