return {
  { 'folke/which-key.nvim', event = 'VeryLazy' }, -- XXX
  { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },
  { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end },
  { 'akinsho/toggleterm.nvim', config = true },

}
