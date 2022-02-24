local present, packer = pcall(require, "plugins.packerInit")

if not present then
	return false
end

local plugins = {
	{ "nvim-lua/plenary.nvim" },
	{ "lewis6991/impatient.nvim" },
	{ "nathom/filetype.nvim" },

	{
		"wbthomason/packer.nvim",
		event = "VimEnter",
	},
	{
		"dracula/vim",
		as = "dracula",
		-- after = "packer.nvim"
	},
	{
		"glepnir/dashboard-nvim",
		after = "dracula",
		config = function()
			require("plugins.configs.dashboard-nvim")
		end,
	},
	{
		"kyazdani42/nvim-web-devicons",
		after = "dashboard-nvim",
	},
	{
		"SmiteshP/nvim-gps",
		after = "nvim-web-devicons",
		config = function()
			require("plugins.configs.nvim-gps").setup()
		end,
	},
	{
		"NTBBloodbath/galaxyline.nvim",
		after = "nvim-gps",
		config = function()
			require("plugins.configs.galaxyline")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		after = "galaxyline.nvim",
		config = function()
			require("plugins.configs.nvim_bufferline")
		end,
		setup = function()
			require("core.mappings").bufferline()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		config = function()
			require("plugins.configs.nvim_treesitter").setup()
		end,
	},

	-- git stuff
	{
		"tpope/vim-fugitive",
		event = "BufRead",
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "BufRead",
		config = function()
			require("plugins.configs.gitsigns").setup()
		end,
	},

	-- lsp stuff
	{
		"neovim/nvim-lspconfig",
		after = "bufferline.nvim",
		config = function()
			require("plugins.configs.lspconfig")
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("plugins.configs.lsp_signature")
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("plugins.configs.null-ls")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		after = "null-ls.nvim",
		config = function()
			require("plugins.configs.cmp").setup()
		end,
	},
	{
		"hrsh7th/vim-vsnip",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-vsnip",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-nvim-lua",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-buffer",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-path",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-cmdline",
		after = "nvim-cmp",
	},
	{
		"onsails/lspkind-nvim",
		after = "nvim-cmp",
	},

	-- misc plugins
	{
		"windwp/nvim-autopairs",
		after = "nvim-cmp",
		config = function()
			require("plugins.configs.nvim_autopairs").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		config = function()
			require("plugins.configs.indent-blankline")
		end,
	},
	{
		"famiu/bufdelete.nvim",
		event = "BufRead",
	},
	{
		"machakann/vim-highlightedyank",
		event = "BufRead",
	},
	{
		"j-hui/fidget.nvim",
		event = "BufRead",
		config = function()
			require("plugins.configs.fidget").setup()
		end,
	},
	{
		"ggandor/lightspeed.nvim",
		event = "BufRead",
	},
	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("plugins.configs.comment").setup()
		end,
	},
	{
		"dstein64/vim-startuptime",
	},

	-- file managing, picking, etc
	{
		"nvim-telescope/telescope.nvim",
		after = "galaxyline.nvim",
		setup = function()
			require("core.mappings").tele()
		end,
		config = function()
			require("plugins.configs.telescope").setup()
		end,
	},
	{
		"kyazdani42/nvim-tree.lua",
		after = "telescope.nvim",
		setup = function()
			require("core.mappings").nvimtree()
		end,
		config = function()
			require("plugins.configs.nvimtree").setup()
		end,
	},
}

return packer.startup(function(use)
	for _, v in pairs(plugins) do
		use(v)
	end
end)
