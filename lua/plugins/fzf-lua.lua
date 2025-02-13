-- See original spec: https://www.lazyvim.org/extras/editor/fzf
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    -- require("fzf-lua").setup({ { "telescope" } })
    -- require("fzf-lua").setup_fzfvim_cmds()
    require('fzf-lua').setup({'fzf-vim'})
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
  keys = {
    { ";", "<cmd>FzfLua buffers<cr>", desc = "Switch Buffer", },
  }
}
