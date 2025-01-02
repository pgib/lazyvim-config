-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<Leader>,", ":Neotree action=show source=filesystem toggle=true<cr>", { noremap = true, silent = true })
map("n", "<Leader>lg", ":Snacks.lazygit.open()<cr>")
map("n", "<Leader>n", ":Neotree reveal_force_cwd<cr>", { noremap = true, silent = true })
map("n", "<Leader>t", ":FzfLua git_files<cr>", { noremap = true, silent = true })
map("n", "<Bslash>", "<C-W>w")

-- ` to go to the nxt window; ~ to go back
map("n", "`", "<C-W>w", { silent = true })
map("n", "~", "<C-W>p", { silent = true })

-- Disable the flash plugin's hijacking of a very core vim command
vim.keymap.del("n", "s")

local function select_colorscheme()
	local schemes = vim.fn.getcompletion("", "color")

	vim.ui.select(schemes, { prompt = "Select a colorscheme:" }, function(choice)
		if choice then
			pcall(vim.cmd.colorscheme, choice)
			print("Colorscheme set to: " .. choice)
		else
			print("No colorscheme selected.")
		end
	end)
end

-- Map this function to a keybinding
vim.keymap.set("n", "<leader>cs", select_colorscheme, { noremap = true, silent = true })
