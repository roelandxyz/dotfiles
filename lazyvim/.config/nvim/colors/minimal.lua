local hi = vim.api.nvim_set_hl

local colors = {
  base03 = "#002b36",
  base02 = "#073642",
  emphasized = "#586e75",
  normal = "#657b83", --base00
  base0 = "#839496", --base0
  base1 = "#93a1a1", --base1
  back_hightlight = "#eee8d5", --base2
  back_normal = "#fdf6e3", --base3
  yellow = "#b58900",
  orange = "#cb4b16",
  red = "#dc322f",
  magenta = "#d33682",
  violet = "#6c71c4",
  blue = "#268bd2",
  cyan = "#2aa198",
  green = "#859900",
}

hi(0, "Normal", { fg = colors.normal, bg = colors.back_normal })
hi(0, "Delimiter", { fg = colors.normal })
hi(0, "Type", { fg = colors.normal })
hi(0, "Constant", { fg = colors.normal })
hi(0, "Operator", { fg = colors.normal })
hi(0, "Comment", { fg = colors.base1 })
hi(0, "Function", { fg = colors.normal })
hi(0, "Special", { fg = colors.normal })
hi(0, "String", { fg = colors.normal })
hi(0, "Identifier", { fg = colors.normal })
hi(0, "Statement", { fg = colors.emphasized })
hi(0, "Visual", { bg = colors.back_hightlight })
hi(0, "NonText", { fg = colors.back_hightlight })
hi(0, "LspReferenceText", { bg = colors.back_hightlight })

-- In a terminal this may not work and you need to change your cursor in the terminal settings
vim.opt.guicursor:append("a:Cursor/lCursor")
hi(0, "Cursor", { reverse = true })
hi(0, "lCursor", { reverse = true })

hi(0, "CursorLine", { bg = colors.back_hightlight })
hi(0, "MatchParen", { bg = colors.back_hightlight, bold = true })

hi(0, "Added", { fg = colors.green })
hi(0, "Removed", { fg = colors.red })
hi(0, "Changed", { fg = colors.yellow })

-- hi(0, "Special", { fg = colors.normal, bg = colors.back_normal })
-- hi(0, "@spell", { fg = colors.normal, bg = colors.back_normal })

hi(0, "@Variable", { fg = colors.normal })
hi(0, "@property", { fg = colors.normal })

-- javascript
hi(0, "@comment.documentation.javascript", { fg = colors.magenta })
hi(0, "@punctuation.delimiter.jsdoc", { fg = colors.magenta })
hi(0, "@punctuation.bracket.jsdoc", { fg = colors.magenta, bold = true })
hi(0, "@keyword.jsdoc", { fg = colors.magenta })
hi(0, "@nospell.jsdoc", { fg = colors.magenta })
hi(0, "@function.method.javascript", { fg = colors.emphasized, bold = true })
hi(0, "@keyword.type.javascript", { fg = colors.emphasized, bold = true })
hi(0, "@keyword.coroutine.javascript", { fg = colors.green, bold = true })
-- hi(0, "@keyword.javascript", { fg = colors.emphasized, bold = true })
-- hi(0, "@keyword.conditional.javascript", { fg = colors.green })
-- hi(0, "@keyword.return.javascript", { fg = colors.emphasized, bold = true })
hi(0, "@variable.parameter.javascript", { fg = colors.blue })
hi(0, "@keyword.import.javascript", { fg = colors.emphasized, bold = true })

-- indent guides
hi(0, "IblScope", { fg = colors.yellow })

hi(0, "NormalFloat", { fg = colors.normal })
