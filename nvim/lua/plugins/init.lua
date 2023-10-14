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
require('lazy').setup({

  -- Colorscheme
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('plugins.tokyonight')
    end,
  },

  -- API
  { 'nvim-lua/plenary.nvim', lazy = true },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  { 'nvim-tree/nvim-web-devicons', lazy = true },
  { 's1n7ax/nvim-window-picker', lazy = true,
      tag = "v1.*",
      config = function()
        require'window-picker'.setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', "quickfix" },
            },
          },
          other_win_hl_color = '#e35e4f',
        })
      end,
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugins.nvim-lspconfig')
    end,
  },
  { 'williamboman/mason-lspconfig.nvim'},
  {
    'williamboman/mason.nvim',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
      require('plugins.mason')
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },

  -- filer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      's1n7ax/nvim-window-picker',
    },
    config = function() require("plugins.neo-tree") end
  },

  -- fomatter
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.null_ls')
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.treesitter")
    end
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
  },

  -- terminal
  {
    "akinsho/toggleterm.nvim",
    tag = "*" ,
    config = function()
      require("plugins.toggleterm")
    end
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function() require("lualine").setup() end,
  },

  -- cmp
  { 'hrsh7th/cmp-nvim-lsp',                lazy = true },
  { 'hrsh7th/cmp-buffer',                  lazy = true },
  { 'hrsh7th/cmp-path',                    lazy = true },
  { 'hrsh7th/cmp-cmdline',                 lazy = true },
  { 'hrsh7th/cmp-nvim-lsp-signature-help', lazy = true },
  { 'hrsh7th/cmp-emoji',                   lazy = true },
  { 'hrsh7th/cmp-vsnip',                   lazy = true },
  { 'hrsh7th/vim-vsnip',                   lazy = true },
  { 'onsails/lspkind.nvim',                lazy = true },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'onsails/lspkind.nvim',
    },
    config = function()
      require('plugins.cmp')
    end,
  }
})

require('plugins.keymap')
