vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-l>", "<c-w>l")

-- set breakpoint
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>")

-- start debug
vim.keymap.set("n", "<leader>sdb", "<cmd>DapContinue<CR>")

local create_eval_window = function(expr)
	require("dapui").eval(expr)
end
vim.keymap.set("n", "<M-K>", create_eval_window)
