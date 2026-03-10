return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  { import = "nvchad.blink.lazyspec" },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = false,
      ensure_installed = {
        "gopls",
        "lua-language-server",
        "html-lsp",
        "clangd",
        "docker-compose-language-server",
        "dockerfile-language-server",
        "neocmakelsp",
        "black",
      },
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ensure_installed = {
            "clang-format",
            "delve",
            "cpptools",
          },
        },
      },
      "neovim/nvim-lspconfig",
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
        -- "c_sharp",
        "python",
        "cmake",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require "configs.dapui"
    end,
    lazy = true,
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
    lazy = true,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "ibhagwan/fzf-lua",
    enabled = true,
    cmd = "FzfLua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    config = function()
      require "configs.fzf"
    end,
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
    lazy = true,
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
    lazy = true,
  },
  -- {
  --   "NeogitOrg/neogit",
  --   lazy = true,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim", -- required
  --
  --     -- Only one of these is needed.
  --     "sindrets/diffview.nvim", -- optional
  --
  --     -- Only one of these is needed.
  --     --"nvim-telescope/telescope.nvim", -- optional
  --     "ibhagwan/fzf-lua", -- optional
  --   },
  --   cmd = "Neogit",
  --   keys = {
  --     { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
  --   },
  -- },
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = {
      "KittyScrollbackGenerateKittens",
      "KittyScrollbackCheckHealth",
      "KittyScrollbackGenerateCommandLineEditing",
    },
    event = { "User KittyScrollbackLaunch" },
    -- version = '*', -- latest stable version, may have breaking changes if major version changed
    -- version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require("kitty-scrollback").setup()
    end,
  },
}
