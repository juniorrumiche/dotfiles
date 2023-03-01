local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "frappe",
  hl_override = highlights.override,
  transparency = false,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
