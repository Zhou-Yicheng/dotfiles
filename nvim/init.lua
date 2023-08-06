vim.g.mapleader = ' '

require('configs.autocmd')
require('configs.keymaps')
require('configs.options')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
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
end

vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)