return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  -- binary dependencies: `rg` and `fd`
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope-file-browser.nvim',
    'nvim-telescope/telescope-project.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    local file_explorer = require('telescope').extensions.file_browser.file_browser
    vim.keymap.set('n', '<leader>fe', file_explorer, { noremap = true })
    local project = require('telescope').extensions.project.project
    vim.keymap.set('n', '<leader>fp', project, { noremap = true })

    require('telescope').setup({
      extensions = {
        file_browser = {
          hijack_netrw = true,
        },
      },
    })

    require('telescope').load_extension('file_browser')
    require('telescope').load_extension('project')
    require('telescope').load_extension('fzf')
  end
}
-- fuzzy
-- exact: '
-- prefix: ^
-- suffix: $
-- inverse: !
