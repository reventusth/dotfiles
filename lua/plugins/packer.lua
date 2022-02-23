local cmd = vim.cmd
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local execute = vim.api.nvim_command

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

cmd("autocmd BufWritePost packer.lua source <afile> | PackerCompile")

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Syntax
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = [[ require 'plugins.configs.nvim_treesitter' ]],
	})

	-- Completion
	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
		end,
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("plugins.configs.null-ls")
		end,
	})
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.configs.cmp")
		end,
		requires = {
			use("hrsh7th/vim-vsnip"),
			use("hrsh7th/cmp-vsnip"),
			use("hrsh7th/cmp-nvim-lsp"),
			use("hrsh7th/cmp-nvim-lua"),
			use("hrsh7th/cmp-buffer"),
			use("hrsh7th/cmp-path"),
			use("hrsh7th/cmp-cmdline"),
			use("onsails/lspkind-nvim"),
		},
	})
	use({
		"ray-x/lsp_signature.nvim",
		config = [[ require 'plugins.configs.lsp_signature' ]],
	})

	-- Theme
	use({ "dracula/vim", as = "dracula" })

	-- UI
	use({
		"NTBBloodbath/galaxyline.nvim",
		config = function()
			require("plugins.configs.galaxyline")
		end,
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Lua
	use({
		"SmiteshP/nvim-gps",
		requires = "nvim-treesitter/nvim-treesitter",
		config = [[ require 'plugins.configs.nvim-gps' ]],
	})
	use({
		"glepnir/dashboard-nvim",
		config = [[ require 'plugins.configs.dashboard-nvim' ]],
	})
	use("machakann/vim-highlightedyank")
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = [[ require 'plugins.configs.indent-blankline' ]],
	})
	use("famiu/bufdelete.nvim")
	use({
		"akinsho/bufferline.nvim",
		config = [[ require 'plugins.configs.nvim_bufferline' ]],
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("plugins.configs.gitsigns")
		end,
	})
	use({
		"j-hui/fidget.nvim",
		config = [[ require 'plugins.configs.fidget' ]],
	})

	-- Command
	use("ggandor/lightspeed.nvim")
	use("tpope/vim-repeat")
	use("tpope/vim-eunuch")
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use("tpope/vim-fugitive")
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = [[ require 'plugins.configs.trouble']],
	})
	use({
		"bkad/CamelCaseMotion",
		config = [[ require 'plugins.configs.camelcasemotion' ]],
	})
	use({
		"kyazdani42/nvim-tree.lua",
		config = [[ require 'plugins.configs.nvim_tree' ]],
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"nvim-telescope/telescope.nvim",
		config = [[ require 'plugins.configs.telescope' ]],
		requires = "nvim-lua/plenary.nvim",
	})
	-- Performance
	use("nathom/filetype.nvim")
	use({
		"luukvbaal/stabilize.nvim",
		config = [[ require 'plugins.configs.stabilize']],
	})
	use("dstein64/vim-startuptime")

	-- Text objects
	use({
		"windwp/nvim-autopairs",
		config = [[ require 'plugins.configs.nvim_autopairs' ]],
	})
end)
