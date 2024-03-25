local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Fuzzy finder
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = {
	    'nvim-lua/plenary.nvim',
	    'BurntSushi/ripgrep',
	    'sharkdp/fd',
	    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
      }
    },

    -- Status line
    {
	  'nvim-lualine/lualine.nvim',
	   dependencies =
         { 'nvim-tree/nvim-web-devicons' }
    },

    -- LSP
    {
	  'neovim/nvim-lspconfig',
	  --opts = {
      --autoformat = false
    --},
    dependencies = {
 	    'hrsh7th/cmp-nvim-lsp',
	    'hrsh7th/nvim-cmp',
	    'sirver/ultisnips',
        'hrsh7th/vim-vsnip',
        'quangnguyen30192/cmp-nvim-ultisnips'
	  }
    },

    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
		    'hrsh7th/cmp-buffer',
		    'hrsh7th/cmp-path',
		    'saadparwaiz1/cmp_luasnip',
		    'hrsh7th/cmp-nvim-lsp',
		    'hrsh7th/cmp-nvim-lua',
      }
    },


    -- File explorer
    {
      'nvim-tree/nvim-tree.lua',
      dependencies =
        { 'nvim-tree/nvim-web-devicons' }
    },

    -- Code Navigator
    {
      'ray-x/navigator.lua',
      dependencies = {
        { 'ray-x/guihua.lua', build = 'cd lua/fzy && make'},
      }
    },

    -- Error/warning window
    {
      'folke/trouble.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {
        use_diagnostic_signs = true
      }
    },

    -- Edit the filesystem like a buffer
    {
      'stevearc/oil.nvim',
      dependencies =
        { "nvim-tree/nvim-web-devicons" },
    },

    {
      'nvim-telescope/telescope-media-files.nvim',
      dependencies = {
        'nvim-lua/popup.nvim'
      }
    },

    {
        "lukas-reineke/headlines.nvim",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true, -- or `opts = {}`
    },

    -- Color Scheme
    'folke/tokyonight.nvim',
    { "catppuccin/nvim", name = "catpuccin" },
    
    -- Notifications
    'rcarriga/nvim-notify',

    -- Show function signature
    'ray-x/lsp_signature.nvim',

    -- Syntax highlighting
    'nvim-treesitter/nvim-treesitter',

    -- Git
    'tpope/vim-fugitive',

    -- Switch between .h and .c
    'linluk/vim-c2h',

    -- Discord rich presence
    'andweeb/presence.nvim',

    -- Global notes
    'backdround/global-note.nvim',

    -- Vim motions
    'ThePrimeagen/vim-be-good',

  })
