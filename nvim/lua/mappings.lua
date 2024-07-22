require "nvchad.mappings"
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- my mappings

map("n", "<leader>rl", "<cmd>ReloadFile<CR>", { desc = "Reload File" })

map("n", "<leader>tw", "<cmd>Trouble diagnostics toggle<CR>", { desc = " Trouble Workspace" })
map("n", "<leader>tt", "<cmd>Trouble<CR>", { desc = " Trouble Workspace" })

-- map("n", "<leader>tt", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = " Trouble Document" })

map("n", "<leader>ta", "<cmd>TZAtaraxis<CR>", { desc = " Truzen Ataraxis" })
map("n", "<leader>ca", "<cmd>CodeActionMenu<CR>", { desc = "󰊕 Code Action" })
map("n", "<F1>", "", { desc = "Help Disable" })

-- map("n", "<leader>dbb", "<cmd>DBUI<CR>", { desc = " DBUI" })

-- Telescope
map("n", "<leader>tb", "<cmd>Telescope builtin<CR>", { desc = " Telescope Builtin" })
map("n", "<leader>tk", "<cmd>Telescope keymaps<CR>", { desc = " Telescope Keymaps" })
map("n", "<leader>bb", "<cmd>Telescope buffers<CR>", { desc = " Telescope Buffers" })
map("n", "<leader>ft", "<cmd>Telescope filetypes<CR>", { desc = " Telescope FileTypes" })
map("n", "<leader>vh", "<cmd>Telescope help_tags<CR>", { desc = " Projects" })
map("n", "<leader>p", "<cmd>Telescope project<CR>", { desc = " Projects" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = " Telescope Grep" })
map("n", "<leader>tlr", "<cmd>Telescope lsp_references<CR>", { desc = " Telescope References" })
map("n", "<leader>ws", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", { desc = " Telescope Workspace Symbols" })
map("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>", { desc = " Telescope Document Symbols" })
map("n", "<leader>tgb", "<cmd>Telescope git_branches<CR>", { desc = " Telescope Git Branches" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = " Telescope Fuzzy Find" })

-- Treesitter
-- map("n", "<leader>cu", "<cmd>TSCaptureUnderCursor<CR>", { desc = " Treesitter Capture Under Cursor" })

map("n", "<leader>jf", "<cmd>Jaq<CR>", { desc = " Jaq Run Float" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = " Quit Windows" })

-- Bookmarks
-- map("n", "<leader>mm", function()
--    require("bookmarks").bookmark_toggle()
-- end, { desc = " Bookmarks Toggle" })
-- map("n", "<leader>mi", function()
--    require("bookmarks").bookmark_ann()
-- end, { desc = " Bookmarks Annotate" })
-- map("n", "<leader>mc", function()
--    require("bookmarks").bookmark_clean()
-- end, { desc = " Bookmarks Clean" })
-- map("n", "<leader>mn", function()
--    require("bookmarks").bookmark_next()
-- end, { desc = " Bookmarks Next" })
-- map("n", "<leader>mp", function()
--    require("bookmarks").bookmark_prev()
-- end, { desc = " Bookmarks Previous" })
-- map("n", "<leader>ml", "<cmd>Telescope bookmarks list<CR>", { desc = " Bookmarks List" })
