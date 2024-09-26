local hi = vim.api.nvim_set_hl

local colors = {
  base03 = "#002b36",
  base02 = "#073642",
  base01 = "#586e75",
  base00 = "#657b83",
  base0 = "#839496",
  base1 = "#93a1a1",
  base2 = "#eee8d5",
  base3 = "#fdf6e3",
  yellow = "#b58900",
  orange = "#cb4b16",
  red = "#dc322f",
  magenta = "#d33682",
  violet = "#6c71c4",
  blue = "#268bd2",
  cyan = "#2aa198",
  green = "#859900",
}

hi(0, "Normal", { fg = colors.base00, bg = colors.base3 })
hi(0, "Delimiter", { fg = colors.base00 })
hi(0, "Type", { fg = colors.base00 })
hi(0, "Constant", { fg = colors.base00 })
hi(0, "Operator", { fg = colors.base00 })
hi(0, "Comment", { fg = colors.base1 })
hi(0, "Function", { fg = colors.base00 })
hi(0, "Special", { fg = colors.base00 })
hi(0, "String", { fg = colors.base00 })
hi(0, "Identifier", { fg = colors.base00 })
hi(0, "Statement", { fg = colors.base00 })
hi(0, "Visual", { bg = colors.base2 })
hi(0, "LspReferenceText", { bg = colors.base2, bold = true })

-- In a terminal this may not work and you need to change your cursor in the terminal settings
vim.opt.guicursor:append("a:Cursor/lCursor")
hi(0, "Cursor", { reverse = true })
hi(0, "lCursor", { reverse = true })

hi(0, "CursorLine", { fg = colors.base00, bg = colors.base2 })
hi(0, "MatchParen", { bg = colors.base2, bold = true })

-- hi(0, "Special", { fg = colors.base00, bg = colors.base3 })
-- hi(0, "@spell", { fg = colors.base00, bg = colors.base3 })

hi(0, "@Variable", { fg = colors.base00 })

-- hi(0, "@keyword.jsdoc", { fg = colors.base00 })
hi(0, "@function.method.javascript", { fg = colors.base00, bold = true })
hi(0, "@keyword.type.javascript", { fg = colors.base00, bold = true })

hi(0, "@keyword.lua", { fg = colors.base00, bold = true })
