vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L776

require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},

	renderer = {
		icons = {
			glyphs = {
				git = {
					unstaged = "UNSTAGED",
					staged = "STAGED",
					unmerged = "UNMERGED",
					renamed = "RENAMED",
					untracked = "UNTRACKED",
					deleted = "DELETED",
					ignored = "IGNORED",
				},
			},
			special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "go.mod" },
		},
	},
})

vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFileToggle<CR>")
