local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs"
  use "moll/vim-bbye"
  use "windwp/nvim-ts-autotag"
  use "simeji/winresizer"
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use "lewis6991/gitsigns.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use 'nvim-lualine/lualine.nvim'
  use { 'iamcco/markdown-preview.nvim' }
  use { 'numToStr/Comment.nvim' }

  --- Golang ---
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'

  -- CMP --
  use "hrsh7th/nvim-cmp"         -- The completion plugin
  use "hrsh7th/cmp-buffer"       -- buffer completions
  use "hrsh7th/cmp-path"         -- path completions
  use "hrsh7th/cmp-cmdline"      -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'
  use "jbyuki/venn.nvim"
  use { 'ollykel/v-vim' }

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'


  -- snippets
  use "L3MON4D3/LuaSnip"             --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"           -- enable LSP
  -- use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim"    -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use({ "glepnir/lspsaga.nvim", branch = "main", })

  use 'nvim-tree/nvim-web-devicons'
  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'kyazdani42/nvim-tree.lua' }
  use 'nkrkv/nvim-treesitter-rescript'


  use { "glepnir/galaxyline.nvim" }

  use { 'akinsho/bufferline.nvim', tag = "v3.*" }


  use({ "catppuccin/nvim" })
  use({ 'glepnir/zephyr-nvim' })

  --- Code With AI
  -- use {
  --   'Exafunction/codeium.vim',
  --   config = function()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --     vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --   end
  -- }

  use {
    'edolphin-ydf/goimpl.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
    },
    config = function()
      require 'telescope'.load_extension 'goimpl'
    end,
  }

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'WhoIsSethDaniel/mason-tool-installer.nvim'
  }

  use 'jinh0/eyeliner.nvim'
  use { "xiyaowong/transparent.nvim" }

  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

  use {
    'VonHeikemen/searchbox.nvim',
    requires = {
      { 'MunifTanjim/nui.nvim' }
    }
  }

  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
      { 'MunifTanjim/nui.nvim' }
    }
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
