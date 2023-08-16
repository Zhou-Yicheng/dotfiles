return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    char = '▏',
    use_treesitter = true,
    show_current_context = true,
    filetype_exclude = {
      'lspinfo',
      'packer',
      'checkhealth',
      'help',
      'man',
      'dashboard',
      'git',
      'markdown',
      'text',
      'terminal',
      'NvimTree',
    },
    buftype_exclude = {
      'terminal',
      'nofile',
      'quickfix',
      'prompt',
    },
  },
}
