local M = {}

M.cmp = {

  completion = {
    completeopt = "menu,menuone,noselect",
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "vim-dadbod-completion" },
    { name = "nvim_lua" },
    { name = "luasnip" },
    { name = "neorg" },
    { name = "buffer" },
    { name = "path" },
  },
  formatting = {
    format = function(entry, vim_item)
      local icons = require("nvchad_ui.icons").lspkind
      local source_mapping = {

        nvim_lsp = "[LSP]",
        nvim_lua = "[LUA]",
        ["vim-dadbod-completion"] = "[DB]",
        path = "[PATH]",
        buffer = "[BUFFER]",
      }
      vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
      vim_item.menu = source_mapping[entry.source.name]
      if entry.source.name == "vim-dadbod-completion" then
        vim_item.kind = string.format("%s keyword", "")
      end

      return vim_item
    end,
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "css",
    "javascript",
    "typescript",
    "json",
    "toml",
    "markdown",
    "c",
    "cpp",
    "fish",
    "dart",
    "bash",
    "lua",
  },
}
M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "cmdheight",
    "mason",
    "progress",
    "noice",
  },
}
M.nvimtree = {
  git = {
    enable = true,
  },

  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
}

M.telescope = {
  extensions_list = { "themes", "terms", "project" },
}

--Mason languge server
M.mason = {
  ensure_installed = {
    --web
    "html-lsp",
    "emmet-ls",
    "typescript-language-server",
    "bash-language-server",
    "lua-language-server",
    "css-lsp",
    "pyright",
    "intelephense",

    -- formatters
    "stylua",
    "prettierd",
    "autopep8",
    "djlint",
    "eslint_d",
    "pylint",
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        row = 0.15,
        col = 0.15,
        width = 0.7,
        height = 0.7,
      },
    },
  },
}

return M
