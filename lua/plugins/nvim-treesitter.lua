return {
  {
    "nvim-treesitter/nvim-treesitter",

    -- autoindentation doesn't seem to work properly for ruby (maybe others, too)
    opts = {
      indent = { disable = { "ruby" } },
    },
  },
}
