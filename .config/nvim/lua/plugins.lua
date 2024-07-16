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
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
      'sharkdp/fd',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'xiyaowong/telescope-emoji.nvim',
    }
  },


  -- LSP
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

  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'hrsh7th/vim-vsnip',
    }
  },

  'ray-x/lsp_signature.nvim',

  -- Code Navigator
  {
    'ray-x/navigator.lua',
    dependencies = {
      {
        'ray-x/guihua.lua',
        build = 'cd lua/fzy && make'
      },
    }
  },

  -- Error/warning window
  {
    'folke/trouble.nvim',
    opts = {
      use_diagnostic_signs = true
    },
    keys = {
      "<leader>e",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
  },

  -- Color Scheme
  "folke/tokyonight.nvim",

  -- Better nvim devicons
  {
    "echasnovski/mini.icons",
    opts = {},
    lazy = true,
    specs = {
      { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },

  -- Markdown
  {
    "OXY2DEV/markview.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.icons"
    },
  },

  -- Status line
  'nvim-lualine/lualine.nvim',

  -- Edit the filesystem like a buffer
  'stevearc/oil.nvim',

  -- Syntax highlighting
  'nvim-treesitter/nvim-treesitter',

  -- Global notes
  'backdround/global-note.nvim',

  -- Git
  'tpope/vim-fugitive',
  'airblade/vim-gitgutter',
})
