local opt = vim.opt
local gui = vim.o
local g = vim.g

g.db_ui_use_nerd_fonts = 1
g.db_ui_show_database_icon = 1
g.db_ui_force_echo_notifications = 1

gui.guifont = "JetBrainsMonoMedium Nerd Font Mono:h9.6:#h-Medium"
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.numberwidth = 3

opt.updatetime = 300

-- neovide options
-- g.neovide_cursor_animation_length = 0.09
g.neovide_cursor_vfx_mode = "railgun"
-- g.neovide_cursor_trail_size = 0.7
-- g.neovide_cursor_vfx_particle_lifetime = 4
