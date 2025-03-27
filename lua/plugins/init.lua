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
        "golines",
        "goimports-reviser",
        "gofumpt",
        "prettier",
        "lua-language-server",
        "html-lsp",
        "stylua",
        "clangd",
        "clang-format",
        "delve",
        "cpptools",
        -- "csharp-language-server",
        -- "csharpier",
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
    "nvim-telescope/telescope.nvim",
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
