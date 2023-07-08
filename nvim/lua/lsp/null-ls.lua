
local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    -- Formatter
    null_ls.builtins.formatting.stylua,
    -- Linter
    null_ls.builtins.diagnostics.typos,
    -- Completion
  },
})
