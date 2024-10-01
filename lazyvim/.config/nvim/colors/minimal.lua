local hi = vim.api.nvim_set_hl

local colors = {
  keyword_prominent = "LightSlateBlue",
  keyword_noticeable = "Thistle",
  functiondef = "NvimLightYellow",
  normal = "NvimLightGrey2",
  documentation = "Orchid",
}

--- Reset to normal colors
hi(0, "Normal", { fg = colors.normal, bg = "#0b1402" })
hi(0, "Function", { fg = colors.normal })
hi(0, "Special", { fg = colors.normal })
hi(0, "String", { fg = colors.normal })
hi(0, "Identifier", { fg = colors.normal })
hi(0, "Statement", { fg = colors.normal })

--- Javascript
hi(0, "@comment.documentation.javascript", { fg = colors.documentation })
hi(0, "@punctuation.delimiter.jsdoc", { fg = colors.documentation })
hi(0, "@punctuation.bracket.jsdoc", { fg = colors.documentation, bold = true })
hi(0, "@keyword.jsdoc", { fg = colors.documentation })
hi(0, "@nospell.jsdoc", { fg = colors.documentation })
hi(0, "@function.method.javascript", { fg = colors.functiondef })
hi(0, "@function.javascript", { fg = colors.functiondef })
hi(0, "@keyword.type.javascript", { fg = colors.keyword_prominent })
hi(0, "@keyword.function.javascript", { fg = colors.keyword_prominent })
hi(0, "@keyword.coroutine.javascript", { fg = colors.keyword_noticeable })
-- hi(0, "@constructor.javascript", { fg = "NvimLightYellow", bold = true })
-- hi(0, "@variable.parameter.javascript", { fg = colors.blue })
-- hi(0, "@keyword.javascript", { fg = colors.emphasized, bold = true })
-- hi(0, "@keyword.conditional.javascript", { fg = colors.green })
-- hi(0, "@keyword.return.javascript", { fg = colors.emphasized, bold = true })
-- hi(0, "@keyword.import.javascript", { fg = colors.emphasized, bold = true })

--- Lua
hi(0, "@comment.documentation.lua", { fg = colors.documentation })
