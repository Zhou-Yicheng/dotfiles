return {
  'simrat39/rust-tools.nvim',
  ft = 'rust',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    local rt = require('rust-tools')
    local function on_attach(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, opts)
      vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, opts)
    end
    rt.setup({
      server = { on_attach = on_attach },
    })
  end
}
