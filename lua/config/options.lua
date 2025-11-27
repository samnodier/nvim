-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Undercurls work in terminals that don't auto-advertise support
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- SYSTEM CLIPBOARD
-- Allows to copy in nvim (y) and paste in the browser (Ctrl+V)
-- NOTE: Ensure you have `wl-clipboard` installed (Hyprland)
vim.opt.clipboard = "unnamedplus"

-- SCROLLING
-- Keeps 8 lines of code visible above/below the cursor when scrolling.
-- Why? It prevents you from typing at the very edge of the screen, helping you see the context of your code.
vim.opt.scrolloff = 8

-- WRAPPING
vim.opt.wrap = false

-- CURSORLINE
vim.opt.cursorline = true
