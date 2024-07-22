require "nvchad.options"

-- add yours here!
local gui = vim.o
local opt = vim.opt
local g = vim.g

gui.guifont = "JetBrainsMono NF:h10:b"
opt.shiftwidth = 3
opt.tabstop = 3


g.neovide_cursor_animation_length = 0.09
g.neovide_cursor_vfx_mode = "railgun"
g.neovide_cursor_trail_size = 0.7
g.neovide_cursor_vfx_particle_lifetime = 4

