return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
  },
  keys = {
    { '<leader>tc', '<CMD>TSContextToggle<CR>', desc = 'Toggle Context' },
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'vim', 'regex', 'lua', 'bash', 'markdown' , 'markdown_inline' },
      auto_install = true,
      highlight = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = 'gnn',
          node_incremental = 'grn',
          node_decremental = 'grm',
          scope_incremental = 'grc',
        },
      },
      indent = {
        enable = true,
      },
    })
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
    vim.wo.foldlevel = 9
  end,
}
