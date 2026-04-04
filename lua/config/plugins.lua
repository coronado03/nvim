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
      integrations = {
        bufferline = true,
      },
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
        live_grep = {
          file_ignore_patterns = { 'node_modules', '.git', '.cpcache', '.clj-kondo', '.lsp' },
          search_dirs = { root_dir },
        },
        defaults = {
          sorting_strategy = "ascending",
          layout_config = { prompt_position = "top" },
        },
      })
    end,
  },{
  "folke/flash.nvim",
  event = "VeryLazy",
  config = function()
    require("flash").setup()
  end,
},
{
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          { filetype = "oil", text = "File Explorer", highlight = "Directory" },
        },
      },
    })
  end,
},
{
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
},
{
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
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
