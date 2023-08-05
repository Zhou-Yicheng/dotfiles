return {
  { 'ellisonleao/glow.nvim', cmd = 'Glow', config = true },
  { 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },
  { 'nvimdev/lspsaga.nvim', event = 'LspAttach', opts = {} },
  -- Lazy
  { 'nvim-tree/nvim-web-devicons', lazy = true },
  { 'williamboman/mason.nvim', lazy = true },
  -- VeryLazy
  { 'numToStr/Comment.nvim', event = 'VeryLazy', opts = {} },
  { 'abecodes/tabout.nvim', event = 'VeryLazy', opts = {} },
}
