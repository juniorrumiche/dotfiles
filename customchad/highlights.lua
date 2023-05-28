local M = {}

M.override = {
  ["@function"] = { italic = true },
  ["@parameter"] = { italic = true },
  ["@method"] = { italic = true },
  ["@variable"] = { fg = "#EF9F76" },
  ["@string"] = { italic = true },
  ["@conditional"] = { bold = true },
  ["@constant"] = { bold = true },

  Sneak = { bg = "#EF9F76" },
  Folded = { bg = "#303446", fg = "#EF9F76" },

  -- colores personalizados
  PmenuSel = { bold = true, bg = "#8CAAEE" },
  Boolean = { italic = true },
  String = { italic = true },
  Comment = { italic = true },
  Constant = { bold = true },
  Keyword = { bold = true },
  Conditional = { bold = true },
  Operator = { bold = true },
  Variable = { fg = "#EF9F76" },
}

return M
