-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map kk to Esc
map('i', 'kk', '<Esc>')

-- Clear highlight with <leader> and c and h
map('n', '<leader>ch', '<CMD>nohl<CR>')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- -- Toggle auto-indenting for code paste
-- map('n', '<F2>', '<CMD>set invpaste paste?<CR>')

-- Terminal mappings
-- map('n', '<C-t>', '<CMD>Term<CR>')      -- open
-- map('t', '<Esc>', '<C-\\><C-n>')        -- exit

-- -- Reload configuration without restart nvim
-- map('n', '<leader>r', ':so %<CR>')

-- -- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>')

-- -- Close all windows and exit from Neovim with <leader> and q
-- map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- -- NvimTree
-- map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
-- map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
-- map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- -- Tagbar
-- map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close
