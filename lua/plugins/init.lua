return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "lua-language-server",
        "html-lsp",
        "stylua",
        "clangd",
        "delve",
        "cpptools",
        -- "csharp-language-server",
        "docker-compose-language-server",
        "dockerfile-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "c",
        "cpp",
        "go",
        "dockerfile",
        "yaml",
        "c_sharp",
        "python",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require "configs.dapui"
    end,
    dependencies = {
      {
        "mfussenegger/nvim-dap",
        config = function()
          require "configs.dap"
        end,
        opts = {},
      },
      {
        "nvim-neotest/nvim-nio",
      },
      -- {
      --   "theHamsta/nvim-dap-virtual-text",
      --   opts = {},
      -- },
      {
        "leoluz/nvim-dap-go",
        ft = "go",
        config = true,
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = true,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {
      "borderless_full",
      winopts = {
        fullscreen = true,
        --split = "belowright new", -- open in a split instead?
        -- "belowright new"  : split below
        -- "aboveleft new"   : split above
        -- "belowright vnew" : split right
        -- "aboveleft vnew   : split left
        winopts = { -- builtin previewer window options
          number = true,
          relativenumber = false,
          cursorline = true,
          cursorlineopt = "both",
          cursorcolumn = false,
          signcolumn = "no",
          list = false,
          foldenable = false,
          foldmethod = "manual",
        },
      },
      hls = {
        normal = "TelescopeNormal",
        border = "TelescopeBorder",
        title = "TelescopePromptTitle",
        help_normal = "TelescopeNormal",
        help_border = "TelescopeBorder",
        preview_normal = "TelescopeNormal",
        preview_border = "TelescopeBorder",
        cursor = "Cursor",
        cursorline = "TelescopePreviewLine",
        cursorlinenr = "TelescopePreviewLine",
        search = "IncSearch",
        preview_title = "TelescopePreviewTitle",
      },
      fzf_colors = {
        ["fg"] = { "fg", "TelescopeNormal" },
        ["bg"] = { "bg", "TelescopeNormal" },
        ["hl"] = { "fg", "TelescopeMatching" },
        ["fg+"] = { "fg", "TelescopeSelection" },
        ["bg+"] = { "bg", "TelescopeSelection" },
        ["hl+"] = { "fg", "TelescopeMatching" },
        ["info"] = { "fg", "TelescopeMultiSelection" },
        ["border"] = { "fg", "TelescopeBorder" },
        ["gutter"] = { "bg", "TelescopeNormal" },
        ["prompt"] = { "fg", "TelescopePromptPrefix" },
        ["pointer"] = { "fg", "TelescopeSelectionCaret" },
        ["marker"] = { "fg", "TelescopeSelectionCaret" },
        ["header"] = { "fg", "TelescopePromptTitle" },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    enabled = false,
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<A-t>"] = require("telescope.actions.layout").toggle_preview,
        ["<Esc>"] = require("telescope.actions").close,
      }

      return conf
    end,
  },
  { "nvim-neotest/nvim-nio" },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  -- {
  --   "Decodetalkers/csharpls-extended-lsp.nvim",
  --   ft = "c_sharp",
  -- },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
}
