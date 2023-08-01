return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  cmd = 'Telescope',
  dependencies = {  -- binary dependencies: `rg` and `fd`
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'nvim-telescope/telescope-project.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  keys = {
    { '<leader>fe', '<CMD>Telescope file_browser<CR>', desc = 'File Browser' },
    { '<leader>ff', '<CMD>Telescope find_files<CR>', desc = 'Find Files' },
    { '<leader>fg', '<CMD>Telescope live_grep<CR>', desc = 'Live Grep' },
    { '<leader>fb', '<CMD>Telescope buffers<CR>', desc = 'Find Buffers' },
    { '<leader>fh', '<CMD>Telescope help_tags<CR>', desc = 'Help Tags' },
    { '<leader>fr', '<CMD>Telescope oldfiles<CR>', desc = 'Recent Files' },
    { '<leader>gc', '<CMD>Telescope git_commits<CR>', desc = 'git commits' },
    { '<leader>gs', '<CMD>Telescope git_status<CR>', desc = 'git status' },
    { '<leader>fp', function() require('telescope').extensions.project.project() end },
  },
  config = function()
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
