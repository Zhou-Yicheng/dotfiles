return {
  'fedepujol/move.nvim',
  keys = {
    { mode = 'n', '<A-k>', '<CMD>MoveLine(-1)<CR>', desc = 'Line: up' },
    { mode = 'n', '<A-j>', '<CMD>MoveLine(1)<CR>', desc = 'Line: down' },
    { mode = 'n', '<A-h>', '<CMD>MoveHChar(-1)<CR>', desc = 'Character: left' },
    { mode = 'n', '<A-l>', '<CMD>MoveHChar(1)<CR>', desc = 'Character: right' },
    { mode = "v", "<A-k>", ":MoveBlock(-1)<CR>", desc = "Block: up" },
    { mode = "v", "<A-j>", ":MoveBlock(1)<CR>", desc = "Block: down" },
    { mode = "v", "<A-h>", ":MoveHBlock(-1)<CR>", desc = "Block: left" },
    { mode = "v", "<A-l>", ":MoveHBlock(1)<CR>", desc = "Block: right" },
  },
}
