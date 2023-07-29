return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-telescope/telescope-file-browser.nvim',
    'nvim-telescope/telescope-project.nvim',
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    local file_browser = require('telescope').extensions.file_browser.file_browser
    vim.keymap.set('n', '<leader>fe', file_browser, { noremap = true })
    local project = require('telescope').extensions.project.project
    vim.keymap.set('n', '<leader>fp', project, { noremap = true })

    require('telescope').setup({
      defaults = {
        vimgrep_arguments = {
          'ag',
          '--nocolor',
          '--noheading',
          '--numbers',
          '--column',
          '--smart-case',
          '--silent',
          '--vimgrep',
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        },
        -- project = {
        --   base_dirs = {
        --     '~/note',
        --     '~/code/play',
        --   },
        --   hidden_files = true,
        --   on_project_selected = function(prompt_bufnr)
        --     require("telescope._extensions.project.actions").change_working_directory(prompt_bufnr, false)
        --     file_browser()
        --   end,
        -- },
      },
    })
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('project')
    require('telescope').load_extension('file_browser')
  end
}
-- fuzzy
-- exact: '
-- prefix: ^
-- suffix: $
-- inverse: !
