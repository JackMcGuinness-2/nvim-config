require("go").setup({
	goimport = "gopls",
	gofmt = "gopls",
	max_line_len = 100,
	tag_transform = false,
	test_template = "",
	test_template_dir = "",
	comment_placeholder = "",
	verbose = false,
	lsp_cnf = false,
	lsp_on_attach = false,

	lsp_codelens = false,
	gopls_remote_auto = true,
	gopls_cmd = nil,
	lsp_diag_hdlr = true,
	dap_debug = true,
	fillstruct = "gopls",
	dap_debug_keymap = true,
	dap_debug_gui = true,
	dap_debug_vt = true,
})

-- Import on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

-- refresh codelens
vim.cmd('autocmd BufEnter,CursorHold,InsertLeave *.go lua require("go.codelens").refresh()')
