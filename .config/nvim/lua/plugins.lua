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
 	    'sharkdp/fd'
      }
    },

    -- Status line
    {
	  'nvim-lualine/lualine.nvim',
	   dependencies = {
         'nvim-tree/nvim-web-devicons'
	   }
    },

    -- LSP
    {
	  'neovim/nvim-lspconfig',
	  dependencies = {
 	    'hrsh7th/cmp-nvim-lsp',
	    'hrsh7th/nvim-cmp',
	    'sirver/ultisnips',
        'hrsh7th/vim-vsnip',
        'quangnguyen30192/cmp-nvim-ultisnips'
	  }
    },
    
    -- File explorer
    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        'nvim-tree/nvim-web-devicons'
      }
    },
    
    -- Code Navigator
    {
      'ray-x/navigator.lua',
      dependencies = {
        { 'ray-x/guihua.lua', build = 'cd lua/fzy && make'},    
      }
    },
    
    -- Show function signature
    'ray-x/lsp_signature.nvim',

    -- Color scheme
    'ellisonleao/gruvbox.nvim',

    -- Syntax highlighting
    'sheerun/vim-polyglot',
    'nvim-treesitter/nvim-treesitter',

    -- VimWiki
    'vimwiki/vimwiki',
    
    -- Git
    'tpope/vim-fugitive',
    
})



