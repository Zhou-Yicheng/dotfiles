vim.g.mapleader = ' '

require('configs.autocmd')
require('configs.keymaps')
require('configs.options')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, 'lazy')

if ok then
  lazy.setup('plugins') -- load plugins from a Lua module
  vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>')
  vim.keymap.set('n', '<leader>ct', ':TSContextToggle<CR>', { noremap = true })
end
