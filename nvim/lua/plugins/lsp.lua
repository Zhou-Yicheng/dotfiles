return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    {   -- TODO: make mason lazy?
      'williamboman/mason-lspconfig.nvim',
      dependencies = { 'williamboman/mason.nvim' },
      opts = {},
    },
  },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('mason-lspconfig').setup_handlers({
      function(server_name)
        require('lspconfig')[server_name].setup({
          capabilities = capabilities
        })
      end,
    })
  end
}
-- See also: https://github.com/VonHeikemen/lsp-zero.nvim
