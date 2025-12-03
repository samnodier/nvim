-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- HTML Indentation = 2 space and other web files as well
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "html",
    "htmldjango",
    "javascriptreact",
    "typescriptreact",
    "javascript",
    "typescript",
    "css",
    "scss",
    "json",
  },
  callback = function()
    vim.opt_local.shiftwidth = 2 -- indent size
    vim.opt_local.tabstop = 2 -- how many space a tab feels like
    vim.opt_local.softtabstop = 2 -- backspace delete spacing
    vim.opt_local.expandtab = true -- convert tabs to spaces
  end,
})
