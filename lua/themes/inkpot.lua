local M = {}

M.base_30 = {
  white = "#FFFFFF",
  darker_black = "#0b1221",
  black = "#111827", --  nvim bg
  black2 = "#1a2130",
  one_bg = "#1e2534",
  one_bg2 = "#282f3e",
  one_bg3 = "#780000",
  grey = "#3e4554",
  grey_fg = "#4a5160",
  grey_fg2 = "#545b6a",
  light_grey = "#5f6675",
  red = "#e36d76",
  baby_pink = "#FECDD3",
  pink = "#ff8e8e",
  line = "#282f3e", -- for lines like vertsplit
  green = "#B5E8B0",
  vibrant_green = "#B5E8B0",
  nord_blue = "#9baaf2",
  blue = "#A5B4FC",
  yellow = "#E8D4B0",
  sun = "#f2deba",
  purple = "#2e2e37",
  dark_purple = "#f2deba",
  teal = "#719bd3",
  orange = "#E3D213",
  cyan = "#DEDBFF",
  statusline_bg = "#171e2d",
  lightbg = "#282f3e",
  pmenu_bg = "#FCA5A5",
  folder_bg = "#A5B4FC",
  visual_fg = "#eeeeee",
  visual_bg = "#4e4e8f",
  linenr_fg = "#8b8bcd",
  linenr_bg = "#2e2e2e",
  comment_fg = "#cd8b00",
  label_blue = "#6443FF",
  ident_blue = "#AA97FF",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#1e2534",
  base02 = "#282f3e",
  base03 = "#323948",
  base04 = "#3e4554",
  base05 = "#01C90E",
  base06 = "#01C90E",
  base07 = "#D1D5DB",
  base08 = "#6443FF",
  base09 = "#01C90E",
  base0A = "#FBC19D",
  base0B = "#B5E8B0",
  base0C = "#AA97FF",
  base0D = "#AA97FF",
  base0E = "#AA97FF",
  base0F = "#6443FF",
}

M.polish_hl = {

  defaults = {
    Keyword = {
      fg = M.base_30.label_blue,
    },

    Function = {
      fg = M.base_30.orange,
      bold = true,
    },

    String = {
      fg = M.base_30.cyan,
      bg = M.base_30.one_bg3,
    },

    Type = {
      fg = M.base_30.ident_blue,
    },

    Variable = {
      fg = M.base_16.base05,
    },

    Number = { fg = M.base_30.red },

    Define = {
      fg = M.base_16.base05,
    },

    Identifier = {
      fg = M.base_16.base05,
    },

    StorageClass = {
      fg = M.base_16.base05,
    },

    Typedef = {
      fg = M.base_16.base05,
    },

    Boolean = {
      fg = M.base_16.base05,
    },

    Operator = {
      fg = M.base_30.red,
    },

    Cursor = {
      fg = M.base_16.base05,
      bg = M.base_30.blue,
    },

    CursorLine = {
      bg = M.base_30.purple,
      sp = "none",
    },

    LineNr = {
      fg = M.base_30.linenr_fg,
      bg = M.base_30.linenr_bg,
    },
    CursorLineNr = { fg = M.base_30.yellow },

    Visual = {
      bg = M.base_30.visual_bg,
      fg = M.base_30.visual_fg,
    },

    VisualNOS = {
      fg = M.base_16.base08,
    },

    Comment = {
      fg = M.base_30.comment_fg,
    },
  },

  treesitter = {

    ["@keyword"] = {
      fg = M.base_30.label_blue,
    },

    ["@keyword.operator"] = {
      fg = M.base_30.baby_red,
    },

    ["@symbol"] = {
      fg = M.base_30.baby_red,
    },

    ["@function"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@function.call"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@function.builtin"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@method"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@method.call"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@function.method.call"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@constant.macro"] = {
      fg = M.base_30.orange,
      bold = true,
    },

    ["@string"] = {
      fg = M.base_30.cyan,
      bg = M.base_30.one_bg3,
    },

    ["@type.builtin"] = {
      fg = M.base_30.ident_blue,
    },

    ["@field"] = {
      fg = M.base_16.base05,
    },

    ["@field.key"] = {
      fg = M.base_16.base05,
    },

    ["@property"] = {
      -- fg = M.base_30.nord_blue,
      fg = M.base_16.base05,
    },

    ["@parameter"] = { fg = M.base_16.base05 },

    ["@operator"] = {
      fg = M.base_30.red,
    },

    ["@variable"] = { fg = M.base_16.base05 },

    ["@variable.parameter"] = { fg = M.base_16.base05 },

    ["@storageclass"] = { fg = M.base_30.ident_blue },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "inkpot")

return M
