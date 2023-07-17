local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	-- packer
	use("wbthomason/packer.nvim")

	-- colourschemes
	--use("ellisonleao/gruvbox.nvim")
	use{"catppuccin/nvim", as = "catppuccin"}

	-- nerd tree
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")

	-- UI
	use("nvim-lualine/lualine.nvim")
	use("akinsho/toggleterm.nvim")
	use("romgrk/barbar.nvim")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- file search
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--lsp
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")

	-- debugging
	use("mfussenegger/nvim-dap")
	use({
		"leoluz/nvim-dap-go",
		dependencies = "mfussenegger/nvim-dap",
		config = function(_, opts)
			require("dap-go").setup(opts)
		end,
	})
	use("rcarriga/nvim-dap-ui")
	use("ldelossa/nvim-dap-projects")

	-- completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")

	-- go
	use("ray-x/go.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
