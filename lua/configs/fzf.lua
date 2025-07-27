local fzfactions = require("fzf-lua").actions
require("fzf-lua").setup {
  --"borderless_full",
  winopts = {
    fullscreen = true,
    -- split = "belowright new", -- open in a split instead?
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
  actions = {
    files = {
      true,
      ["ctrl-x"] = fzfactions.file_split,
    },
  },
}
