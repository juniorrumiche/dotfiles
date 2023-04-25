local opt = vim.opt
local gui = vim.o
local g = vim.g

g.db_ui_use_nerd_fonts = 1
g.db_ui_show_database_icon = 1
g.db_ui_force_echo_notifications = 1

gui.guifont = "JetBrainsMono Nerd Font Mono:h9.7:b"
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.numberwidth = 3

opt.updatetime = 300
