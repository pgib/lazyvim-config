-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ","
vim.colorscheme = "sonokai"
vim.g.autoformat = false
vim.g.lazyvim_picker = "fzf"

-- Pick up changes made outside of Neovim
vim.o.autoread = true
vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  command = "checktime",
})
