local M = {}

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
      "djlint",
      "phpcbf",

      -- "code actions"
      "eslint_d",
   },
}

M.treesitter = {
   ensure_installed = {
      "htmldjango",
      "python",
      "html",
      "php",
      "http",
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
      "dockerfile",
   },
   indent = {
      enable = true,
      disable = {
         "dart",
      },
   },
}

return M
