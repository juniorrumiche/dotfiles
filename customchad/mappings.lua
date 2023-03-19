local M = {}

M.rest = {
  n = {
    ["<leader>rr"] = {
      function()
        require("rest-nvim").run()
      end,
      " Rest Run",
    },
  },
}
M.usere = {
  n = {
    ["<leader>rl"] = { "<cmd> ReloadFile <CR>", "Reload File" },
  },
}

M.trouble = {
  n = {
    ["<leader>tw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", " Trouble Workspace" },
    ["<leader>tt"] = { "<cmd>TroubleToggle document_diagnostics<cr>", " Trouble Workspace" },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", " Truzen Ataraxis" },
  },
}

M.project_launch = {
  n = {
    ["<leader>pl"] = {
      function()
        require("projectlaunch").toggle_main_menu()
      end,
      "Project Launch",
    },
  },
}

M.code_action = {
  n = {
    ["<leader>ca"] = { "<cmd> CodeActionMenu <CR>", "󰊕 Code Action" },
  },
}
-- for notes

-- disable conflic with key tiling window manaaager
M.nohelp = {
  n = {
    ["<F1>"] = { "", "Help Disable" },
  },
}

-- for database
M.db = {
  n = {
    ["<leader>dbb"] = { "<cmd> DBUI <CR>", "  DBUI" },
  },
}

M.telescope = {
  n = {

    ["<leader>tb"] = { "<cmd> Telescope builtin <CR>", "  Telescope FileTypes" },
    ["<leader>ft"] = { "<cmd> Telescope filetypes <CR>", "  Telescope FileTypes" },
    ["<leader>vh"] = { "<cmd> Telescope help_tags <CR>", "  Projects" },
    ["<leader>p"] = { "<cmd> Telescope project <CR>", "  Projects" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "  Telescope Grep" },
    ["<leader>tlr"] = { "<cmd> Telescope lsp_references <CR>", "  Telescope references" },
    ["<leader>ws"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols  <CR>", "  Telescope Branches" },
    ["<leader>ds"] = { "<cmd> Telescope lsp_document_symbols  <CR>", "  Telescope Symbols" },
    ["<leader>tgb"] = { "<cmd> Telescope git_branches <CR>", "  Telescope Branches" },
    ["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find  <CR>", "  Telescope Branches" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}

-- run riles in editor
M.jaq = {
  n = {
    ["<leader>jf"] = { "<cmd> Jaq <CR>", "  Jaq Run Float" },
  },
}

-- preview markdown files
M.glow = {
  n = {
    ["<leader>gl"] = { "<cmd> Glow <CR>", "  Glow Preview" },
  },
}

-- pretty diagnostics
M.quit_windows = {
  n = {
    ["<leader>q"] = { "<cmd> q <CR>", "  quit windows " },
  },
}

return M
