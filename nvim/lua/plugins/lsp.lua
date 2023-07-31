return {
  { 'neovim/nvim-lspconfig', lazy = true },
  { 'nvimdev/lspsaga.nvim', event = 'LspAttach', opts = {} },
  {
    'L3MON4D3/LuaSnip',
    lazy = true,
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load({ paths = { './snippets' }})
    end
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
    },
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'dev-v3',
    event = 'VeryLazy',
    -- event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      local lsp = require('lsp-zero').preset()

      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })
      end)

      lsp.extend_cmp()

      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      lsp.setup_servers({ 'tsserver', 'rust_analyzer' })

      local cmp = require('cmp')
      local luasnip = require('luasnip')

      cmp.setup({
        mapping = {
          ['<CR>'] = cmp.mapping.confirm(),
          ['<C-Enter>'] = cmp.mapping.complete(),
          ['<C-f>'] = function(fallback)
            if luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end,
          ['<C-b>'] = function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        },
      })
    end
  },
}
