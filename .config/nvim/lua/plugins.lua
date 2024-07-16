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

  -- Color Scheme
  "folke/tokyonight.nvim",

  -- Syntax highlighting
  'nvim-treesitter/nvim-treesitter',

  -- Status line
  'nvim-lualine/lualine.nvim',

  -- Git
  'tpope/vim-fugitive',
  'airblade/vim-gitgutter',
  
  -- File System
  'stevearc/oil.nvim',

  -- LSP
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',  
  'L3MON4D3/LuaSnip',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sharkdp/fd',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },

  -- Icons  
  {
    "echasnovski/mini.icons",
    lazy = true,
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
})
