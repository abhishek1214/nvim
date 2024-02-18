local telescope = require('telescope.builtin')

vim.g.mapleader = " "

-- Telescope remaps
vim.keymap.set("n", "<leader><leader>", telescope.find_files, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>b", "<CMD>Neotree source=filesystem toggle=true<CR>", { noremap = true, silent = true })

-- Remap cmd+/ to comment and compile with gcc in normal and insert mode
vim.keymap.set("i", "<D-/>", "<CMD>Comment<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "-", function()
	local reveal_file = vim.fn.expand("%:p")
	if reveal_file == "" then
		reveal_file = vim.fn.getcwd()
	else
		local f = io.open(reveal_file, "r")
		if f then
			f.close(f)
		else
			reveal_file = vim.fn.getcwd()
		end
	end
	require("neo-tree.command").execute({
		action = "focus", -- OPTIONAL, this is the default value
		source = "filesystem", -- OPTIONAL, this is the default value
		reveal_file = reveal_file, -- path to file or folder to reveal
		reveal_force_cwd = true, -- change cwd without asking if needed
	})
end)

-- Remap mac cmd shortcuts in Neovim

-- Example: Remap cmd-s to save
vim.api.nvim_set_keymap("n", "<D-s>", ":w<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<D-Right>", "<End>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<D-Right>", "$", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<D-Left>", "<Home>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<D-Left>", "0", { noremap = true, silent = true })


