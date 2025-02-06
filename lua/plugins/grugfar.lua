-- search/replace in multiple files
-- note that the font will display a backslash to look like a pipe because italics
-- use j/k to move and up and down as the arrow keys don't work the same
return {
  "MagicDuck/grug-far.nvim",
  opts = { headerMaxWidth = 80 },
  cmd = "GrugFar",
  config = function()
    vim.g.maplocalleader = "\\"
    require("grug-far").setup()
  end,
  keys = {
    {
      "<leader>sr",
      function()
        local grug = require("grug-far")
        local ext = vim.bo.buftype == "" and vim.fn.expand("%:e")
        grug.open({
          transient = true,
          prefills = {
            filesFilter = ext and ext ~= "" and "*." .. ext or nil,
          },
        })
      end,
      mode = { "n", "v" },
      desc = "Search and Replace",
    },
  },
}
