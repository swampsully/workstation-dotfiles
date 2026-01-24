

						-- This is my Neovim config 03/07/25 --
	-- This sets line numbering --
vim.wo.relativenumber = true
vim.wo.number = true
	
	-- This section is for tabs --

vim.keymap.set("n", "<C-n>", vim.cmd.tabnew)

vim.keymap.set("n", "<C-q>", vim.cmd.tabclose)

vim.keymap.set("n", "<C-h>", vim.cmd.tabp)

vim.keymap.set("n", "<C-l>", vim.cmd.tabn)


	-- This goes to netrw --
vim.keymap.set("n", "<C-f>", vim.cmd.Ex)

	-- This opens the terminal --
	
vim.keymap.set("n", "<C-t>", vim.cmd.term)
	-- This starts Lazy --
require("config.lazy") 

	-- This helps with macro recorring --

vim.api.nvim_create_autocmd("RecordingEnter", {
  callback = function()
    vim.opt.cmdheight = 1
  end,
})
vim.api.nvim_create_autocmd("RecordingLeave", {
  callback = function()
    vim.opt.cmdheight = 0
  end,
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
