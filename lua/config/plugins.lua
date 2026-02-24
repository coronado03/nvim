return require("lazy").setup({
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
    {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = 'master',
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true, 
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
        ensure_installed = { "c", "cpp", "python", "lua", "javascript", "typescript" },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_config = { prompt_position = "top" },
        },
      })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        numhl = false,
        linehl = false,
      })
    end,
  },
  {
  "folke/which-key.nvim",
  lazy = false,
  config = function()
    require("which-key").setup()
  end,
},
})
