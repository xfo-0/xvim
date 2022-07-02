local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("failed to load: packer")
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "lewis6991/impatient.nvim"
	use "goolord/alpha-nvim"
	use "ahmedkhalf/project.nvim"
	use "nvim-lualine/lualine.nvim"
	use "akinsho/bufferline.nvim"
	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"
	use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
	use "lambdalisue/suda.vim"
	use "folke/which-key.nvim"

	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "stevearc/dressing.nvim"
	use { "ellisonleao/glow.nvim", branch = 'main' }
	use "felipec/vim-sanegx"
	use "untitled-ai/jupyter_ascending.vim"
	use "moll/vim-bbye"
	use "akinsho/toggleterm.nvim"
	use "voldikss/vim-floaterm"
	use "ptzz/lf.vim"
  -- use "nvim-pack/nvim-spectre"

	use "ethanholz/nvim-lastplace"
	use "karb94/neoscroll.nvim"
	use "norcalli/nvim-colorizer.lua"
  use ({"ziontee113/color-picker.nvim",
      config = function()
          require("color-picker")
      end,
  })
  -- use "monaqa/dial.nvim"
  -- use "RRethy/vim-illuminate"
	use "lukas-reineke/indent-blankline.nvim"
	use "p00f/nvim-ts-rainbow"
	use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
	use "wellle/targets.vim"
	use "tpope/vim-unimpaired"
	use "tpope/vim-repeat"
	use "kylechui/nvim-surround"
	use "kshenoy/vim-signature"
  -- use "MattesGroeger/vim-bookmarks"
	use "dbmrq/vim-chalk"
	use "numToStr/Comment.nvim" -- Easily comment stuff
	use "phaazon/hop.nvim"
  -- use "andymass/vim-matchup"
	use "christoomey/vim-tmux-navigator"
	use "intrntbrn/awesomewm-vim-tmux-navigator"
	use "mg979/vim-visual-multi"

	-- Colorschemes
	use "AlessandroYorba/Despacio"

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"

	-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- simple to use language server installer
	use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  -- use "github/copilot.vim"
  use {
    "zbirenbaum/copilot.lua",
    event = {"VimEnter"},
    config = function()
      vim.defer_fn(function()
        require("user.copilot")
      end, 100)
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    module = "copilot_cmp",
  }

	-- Telescope
	use "nvim-telescope/telescope.nvim"

	-- Treesitter
	use ({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use "JoosepAlviste/nvim-ts-context-commentstring"

	-- Git
	use "lewis6991/gitsigns.nvim"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
