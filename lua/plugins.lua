vim.g.mapleader = ";" -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require('settings.ts')
    end,
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd[[colorscheme tokyonight-moon]]
      require("tokyonight").setup({
        transparent = true,
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      require('settings.lsp')
    end,
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
      'onsails/lspkind.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim'
    },
  },

  {
      'nvim-telescope/telescope.nvim',
  },

  {
    "andweeb/presence.nvim",
    config = function()
      require('presence').setup()
    end,
  },

  {
    'akinsho/bufferline.nvim',
    config = function ()
      require('bufferline').setup()
      vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(function(v)
        return v.hl_group
      end, vim.tbl_values(require('bufferline.config').highlights))
      )
    end
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      "MunifTanjim/nui.nvim"
    },
    config = function ()
      require('settings.neotree')
    end
  },

  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({
        options = {
          theme = "tokyonight"
        }
      })
    end,
  },

  {
  },

  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup()
    end,
  },

  {
    -- Formatter
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {
      'MunifTanjim/prettier.nvim'
    },
    config = function()
      require('settings.nuls')
    end
  }

})
