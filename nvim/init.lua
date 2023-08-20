vim.g.mapleader = ' '

local function vscode()
  print('vscode')
end

local function config()
  require('autocmd')
  require('keymaps')
  require('options')
end

local function plugin()
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
    local opts = {
      git = { url_format = "git@github.com:%s.git" },
    }
    lazy.setup('plugins', opts) -- setup plugins with opts
  end
end

if vim.g.vscode then
  config()
  vscode()
else
  config()
  plugin()
end

