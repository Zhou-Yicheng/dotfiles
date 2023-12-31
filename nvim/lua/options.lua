----------------------------------------------------------
-- General Neovim settings and configuration
----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

----------------------------------------------------------
-- General
----------------------------------------------------------
-- opt.cursorcolumn = true
opt.cursorline = true
opt.list = true
opt.listchars = {
  tab='▷ ',
  trail='·',
  extends='◣',
  precedes='◢',
  nbsp='○',
}

opt.guifont = { 'Fira Code Retina', ':h10' }
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.swapfile = false                  -- Don't use swapfile
opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options

----------------------------------------------------------
-- Neovim UI
----------------------------------------------------------
opt.number = true           -- Show line number
opt.showmatch = true        -- jump to matching parenthesis
opt.colorcolumn = '100'      -- Line length marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors

----------------------------------------------------------
-- Tabs, indent
----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines

----------------------------------------------------------
-- Memory, CPU
----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.timeoutlen = 200
opt.synmaxcol = 300         -- Max column for syntax highlight
opt.updatetime = 400        -- ms to wait for trigger an event

----------------------------------------------------------
-- Startup
----------------------------------------------------------
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
