return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")
    nvimtree.setup({})

    local keymap = vim.keymap
    keymap.set("n", "<Leader>,", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle file browser" })
    keymap.set("n", "<Leader>n", ":NvimTreeFindFile<CR>", { noremap = true, silent = true, desc = "Show current file in browser" })
  end
}
