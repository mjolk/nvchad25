local lint = require "lint"
lint.linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  go = { "golangcilint" },
  c = { "clang-tidy" },
  cpp = { "clang-tidy" },
}
-- Run linting on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
