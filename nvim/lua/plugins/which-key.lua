return {
  'folke/which-key.nvim',
  event = { 'CursorHold', 'CursorHoldI' },
  init = function()
    vim.opt.timeout = true
    vim.opt.timeoutlen = 500
  end,
  opts = {
    plugins = { spelling = true },
  },
}
