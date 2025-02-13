return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")
    nvimtree.setup({})
  end,
  keys = {
    { "<leader>,", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file browser" },
    { "<leader>n", "<cmd>NvimTreeFindFile<cr>", desc = "Show current file in browser" },
  }
}
