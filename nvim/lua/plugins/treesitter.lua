return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
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
  end,
}
