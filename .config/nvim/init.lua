-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("plugins")

-- Colorscheme
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Map leader to space
vim.g.mapleader = ' '

-- Tabs sind für lutscher
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.o.expandtab = true

-- Numbers on the side
vim.wo.number = true
vim.o.ruler = true

-- Show something in the command line not sure
vim.o.showcmd = true

-- reload config without restart
vim.keymap.set('n', '<leader>r', ':so %<CR>')

-- Lualine setup
require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      section_separators = { left = '', right = '' }, 
      component_separators = { left = '', right = '' }
    },
}
 
-- LSP setup
require("lsp")

require('lsp_signature').setup()

-- File explorer setup
require("nvim-tree").setup()
vim.keymap.set('n', '<leader>ff', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<CR>')

-- Vimwiki setup
vim.keymap.set('n', '<leader>ww', ':VimwikiIndex<CR>')
vim.cmd[[hi VimwikiHeader1 gui=bold guifg=#A6BE26]]
vim.cmd[[hi VimwikiHeader2 gui=bold guifg=#f49ac2]]
vim.cmd[[hi VimwikiHeader3 gui=bold guifg=#f21840]]
vim.cmd[[hi VimwikiHeader4 gui=bold guifg=#F97a40]]
vim.cmd[[hi VimwikiHeader5 gui=bold guifg=#088da5]]
vim.cmd[[hi VimwikiHeader6 gui=bold guifg=#ee5555]]

-- Treesitter setup
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  },
}

-- Navigator setup
require('navigator').setup()

-- Trouble setup
vim.keymap.set('n', '<leader>e', ':TroubleToggle<CR>')

-- Nvim-notify setup
vim.notify = require('notify')

-- Telescope setup
require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>tf', ':Telescope find_files<CR>')  -- file search
vim.keymap.set('n', '<leader>tg', ':Telescope live_grep<CR>')   -- ripgrep search 
vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>')     -- buffer peak
vim.keymap.set('n', '<leader>th', ':Telescope help_tags<CR>')   -- help menu
vim.keymap.set('n', '<leader>tt', ':Telescope treesitter <CR>') -- treesitter symbol menu 
vim.keymap.set('n', '<leader>tn', ':Telescope notify<CR>')      -- notificationa
vim.keymap.set('n', '<leader>tp', ':Telescope builtin<CR>')     -- picker picker lmao

-- File System editor setup
require('oil').setup()

-- c2h setup
vim.keymap.set('n', '<leader>ch', ':C2H<CR>')

-- which-key setup
require("which-key")

-- Custom scripts
require('notifications')


