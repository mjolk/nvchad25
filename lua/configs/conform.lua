local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "pettier" },
    scss = { "prettier" },
    go = { "gofumpt", "golines" },
    c = { "clang-format" },
    cpp = { "clang-format" },
  },
  formatters = {
    golines = {
      prepend_args = { "-m", 80, "--base-formatter", "goimports-reviser --output stdout -" },
    },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

return options
