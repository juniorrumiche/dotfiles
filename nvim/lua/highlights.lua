local M = {}

M.override = {
   ["@function"] = { italic = true },
   ["@parameter"] = { italic = true },
   ["@method"] = { italic = true },
   ["@variable"] = { fg = "#EF9F76" },
   ["@string"] = { italic = true },
   ["@conditional"] = { bold = true },
   ["@constant"] = { bold = true },

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

   -- para los plegables
   Folded = { bg = "#303446", fg = "#EF9F76" },
   FoldColumn = { bg = "#303446" },
}

return M
