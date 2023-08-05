local banner = {
  "                                                    ",
  " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                    ",
}

local version = vim.version()
local print_version = string.format('v%s.%s.%s ', version.major, version.minor, version.patch)
local datetime = os.date('%Y/%m/%d %H:%M:%S')

-- For configuration examples see: https://github.com/goolord/alpha-nvim/discussions/16
return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local dashboard = require('alpha.themes.dashboard')
    dashboard.section.header.val = banner

    dashboard.section.buttons.val = {
      dashboard.button('e', '  New', ':ene <BAR> startinsert<CR>'),
      dashboard.button('f', '  File', ':Telescope find_files<CR>'),
      dashboard.button('p', '  Project', ':lua require"telescope".extensions.project.project()<CR>'),
      dashboard.button('s', '  Settings', ':e $MYVIMRC<CR>'),
      dashboard.button('u', '  Update', ':Lazy update<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    dashboard.section.footer.val = print_version .. datetime

    require('alpha').setup(dashboard.config)
  end,
}

