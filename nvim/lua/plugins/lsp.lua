return {
  'neovim/nvim-lspconfig',
  ft = 'lua',
  -- event = { 'BufReadPre', 'BufNewFile' },
  dependencies = { 'hrsh7th/cmp-nvim-lsp' },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })
  end
}
