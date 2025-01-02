return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		opts = { style = "andromeda" },
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.sonokai_enable_italic = true
			vim.g.sonokai_style = "andromeda"
			vim.cmd.colorscheme("sonokai")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = { theme = "wave" },
	},
	{
		"dracula/vim",
	},
	{
		"morhetz/gruvbox",
	},
	{
		"yorumicolors/yorumi.nvim",
	},
}
