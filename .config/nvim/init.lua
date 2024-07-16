
-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- load legacy options
vim.cmd([[so ~/.config/nvim/legacy.vim]])

require("plugins")

-- Colorscheme
vim.cmd [[colorscheme tokyonight-moon]]

vim.opt.termguicolors = true
vim.o.background = "dark"

-- Map leader to space
vim.g.mapleader = ' '

-- Tabs sind für lutscher
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.o.expandtab = true

-- Numbers on the side
vim.wo.number = true
vim.wo.relativenumber = true 
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

-- Treesitter setup
require('nvim-treesitter.configs').setup {
  highlight = { enable = true }
}

-- Telescope setup
local telescope = require('telescope')
telescope.load_extension('fzf')
vim.keymap.set('n', '<leader>tf', ':Telescope find_files<CR>')  -- file search
vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>')     -- buffer peak
vim.keymap.set('n', '<leader>th', ':Telescope help_tags<CR>')   -- help menu
vim.keymap.set('n', '<leader>tt', ':Telescope treesitter <CR>') -- treesitter symbol menu
vim.keymap.set('n', '<leader>tp', ':Telescope builtin<CR>')     -- picker picker lmao

require('oil').setup()

-- LSP

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local luasnip = require('luasnip')
luasnip.setup()

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = cmp.config.sources {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
      }
      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-k>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Tab>'] = cmp.mapping.select_next_item(select_opts),
  }
})
 

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').clangd.setup {
  capabilities = lsp_capabilities,
}

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the definition of the type symbol
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references 
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<cr>')

  end
})
