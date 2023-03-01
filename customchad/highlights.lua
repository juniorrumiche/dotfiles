local M = {}

M.override = {
  ["@function"] = { italic = true },
  ["@parameter"] = { italic = true },
  ["@method"] = { italic = true },

  -- colores personalizados
  PmenuSel = { italic = true, bg = "#8CAAEE" },
  Boolean = { italic = true },
  String = { italic = true },
  Comment = { italic = true },
  Constant = { bold = true },
  Keyword = { bold = true },
  Conditional = { bold = true },
  Operator = { bold = true },

  MindNodeRoot = { bold = true, italic = true },
  MindNodeParent = { bold = true, italic = true },
  MindNodeLeaf = { bold = true, italic = true },
  NvimTreeFolderName = { italic = true },
}

return M
