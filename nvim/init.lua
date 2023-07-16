--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('core/lazy')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('core/options')
require('core/indent-blankline')
require('core/telescope')
require('lsp')
require('dap')
require('plugins/nvim-tree')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
require('markdown')

require("luasnip.loaders.from_vscode").load({paths = "./snippets"})
