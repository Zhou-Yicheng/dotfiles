return {
  'nvim-treesitter/nvim-treesitter',
  build = 'TSUpdate',
  config = function()
	require('nvim-treesitter.configs').setup {
	  highlight = {
	    enable = true,
	  },
	  textobjects = {
	    select = {
	      enable = true,
	      lookahead = true,
	      keymaps = {
			["af"] = "@function.outer",
			["if"] = "@function.inner",
			["ac"] = "@class.outer",
			["ic"] = "@class.inner",
			["ab"] = "@block.outer",
			["ib"] = "@block.inner",
			["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
	      },
	    },
	  },
	}
  end,
}
-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter

