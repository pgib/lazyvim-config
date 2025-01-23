return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({ { "telescope" } })

    local map = vim.keymap.set
    map("n", ";", "FzfLua buffers<cr>", { noremap = true, silent = true })
    map("n", ";;", "FzfLua buffers<cr>", { noremap = true, silent = true })

  end,
}
