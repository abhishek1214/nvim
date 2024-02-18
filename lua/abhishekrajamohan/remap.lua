vim.g.mapleader = " "

vim.keymap.set('n', '<leader>b', '<CMD>Neotree source=filesystem toggle=true<CR>')

vim.keymap.set('n', '-', function()
	local reveal_file = vim.fn.expand('%:p')
	if (reveal_file == '') then
		reveal_file = vim.fn.getcwd()
	else
		local f = io.open(reveal_file, "r")
		if (f) then
			f.close(f)
		else
			reveal_file = vim.fn.getcwd()
		end
	end
	require('neo-tree.command').execute({
		action = "focus",            -- OPTIONAL, this is the default value
		source = "filesystem",       -- OPTIONAL, this is the default value
		position = "left",           -- OPTIONAL, this is the default value
		reveal_file = reveal_file,   -- path to file or folder to reveal
		reveal_force_cwd = true,     -- change cwd without asking if needed
	})
end
)
