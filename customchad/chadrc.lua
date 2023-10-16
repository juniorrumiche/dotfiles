local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "frappe",
  hl_override = highlights.override,
  transparency = false,
  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  nvdash = {
    load_on_startup = true,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
