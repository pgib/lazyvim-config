return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    --require("fzf-lua").setup({ { "telescope" } })
    -- require("fzf-lua").setup_fzfvim_cmds()
    require('fzf-lua').setup({'fzf-vim'})

    local map = vim.keymap.set
    map("n", ";", "FzfLua buffers<cr>", { noremap = true, silent = true })
    map("n", ";;", "FzfLua buffers<cr>", { noremap = true, silent = true })
  end,
  opts = function(_, opts)
    local fzf = require("fzf-lua")
    local config = fzf.config
    local actions = fzf.actions

    return {
      fzf_opts = {
        ["command rg"] = true,
        ["--no-scrollbar"] = true,
        ["-g '!.git'"] = true,
      },
      files = {
        cmd = os.getenv("FZF_DEFAULT_COMMAND"),
        cwd_prompt = true,
        cwd_prompt_shorten_len = 1,
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["ctrl-g"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}
