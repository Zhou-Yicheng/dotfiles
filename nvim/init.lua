
require('config.autocmds')
require('config.keymaps')
require('config.options')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, 'lazy')
if ok then
  lazy.setup('plugin') -- load plugin from Lua module
end

--require("luasnip.loaders.from_vscode").lazy_load({ paths = "./snippet" }) -- load snippet in VScode style
