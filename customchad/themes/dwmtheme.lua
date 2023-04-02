local M = {}

M.base_30 = {
  white = "#c6d0f5",
  darker_black = "#292D3E",
  black = "#303446", --  nvim bg
  black2 = "#2f3344",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#3c4048",
  one_bg3 = "#41454d",
  grey = "#474656",
  grey_fg = "#53575f",
  grey_fg2 = "#5d6169",
  light_grey = "#676b73",
  red = "#E78284",
  baby_pink = "#E78284",
  pink = "#EA999C",
  line = "#3f4354", -- for lines like vertsplit
  green = "#A6D189",
  vibrant_green = "#A6D189",
  nord_blue = "#85C1DC",
  blue = "#8CAAEE",
  yellow = "#E5C890",
  sun = "#E5C890",
  purple = "#CA9EE6",
  dark_purple = "#CA9EE6",
  teal = "#4db5bd",
  orange = "#EF9F76",
  cyan = "#46D9FF",
  statusline_bg = "#2d3142",
  lightbg = "#2f2e3e",
  pmenu_bg = "#98be65",
  folder_bg = "#8CAAEE",
}

M.base_16 = {
  base00 = "#303446",
  base01 = "#282737",
  base02 = "#414559",
  base03 = "#4e525a",
  base04 = "#5a5e66",
  base05 = "#a7aebb",
  base06 = "#b3bac7",
  base07 = "#bbc2cf",
  base08 = "#EA999C",
  base09 = "#EF9F76",
  base0A = "#EF9F76",
  base0B = "#A6D189",
  base0C = "#99D1DB",
  base0D = "#8CAAEE",
  base0E = "#CA9EE6",
  base0F = "#E78284",
}

M.type = "dark"

M = require("base46").override_theme(M, "frappe")

return M
