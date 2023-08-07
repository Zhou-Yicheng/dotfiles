return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('mason-lspconfig').setup({
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({
            capabilities = capabilities
          })
        end,
      }
    })
  end
}
-- See also: https://github.com/VonHeikemen/lsp-zero.nvim
