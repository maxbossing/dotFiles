-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("plugins")

-- Colorscheme
require("catppuccin").setup({
  transparent_background = true
})
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme catppuccin-macchiato]])

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

-- Treesitter setup
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  },
}

-- Navigator setup
require('navigator').setup()

-- Telescope setup
local telescope = require('telescope')
telescope.load_extension('fzf')
telescope.load_extension('emoji')
vim.keymap.set('n', '<leader>tf', ':Telescope find_files<CR>')  -- file search
vim.keymap.set('n', '<leader>tg', ':Telescope live_grep<CR>')   -- ripgrep search
vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>')     -- buffer peak
vim.keymap.set('n', '<leader>th', ':Telescope help_tags<CR>')   -- help menu
vim.keymap.set('n', '<leader>tt', ':Telescope treesitter <CR>') -- treesitter symbol menu
vim.keymap.set('n', '<leader>tn', ':Telescope notify<CR>')      -- notificationa
vim.keymap.set('n', '<leader>tp', ':Telescope builtin<CR>')     -- picker picker lmao
vim.keymap.set('n', '<leader>te', ':Telescope emoji<CR>')       -- emoji picker


-- File System editor setup
require('oil').setup()

-- c2h setup
vim.keymap.set('n', '<leader>ch', ':C2H<CR>')

-- Global notes setup
local global_note = require('global-note')
global_note.setup()
vim.keymap.set('n', '<leader>n', global_note.toggle_note)

-- markview.nvim
local markview = require("markview")
local markpresets = require("markview.presets")
markview.setup({
  buf_ignore = { "nofile" },
  modes = { "n" },

  restore_conceallevel = true,
  restore_concealcurser = false,

  headings = {
    enable = true,
    shift_width = 2,
  },

  list_items = {
    shift_amount = 1,
    marker_plus = {
      add_padding = true,
      text = "•",
      hl = "rainbow2"
    },
    marker_minus = {
      add_padding = true,
      text = "•",
      hl = "rainbow4"
    },
    marker_star = {
      add_padding = true,
      text = "•",
      text_hl = "rainbow2"
    },
    marker_dot = {
      add_padding = true
    },
  },
})
