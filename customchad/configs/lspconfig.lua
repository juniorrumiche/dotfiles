local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
local servers = {

  -- web
  "html",
  "cssls",
  "jsonls",
  "tsserver",
  -- "tailwindcss",

  -- c , c++
  "clangd",

  -- "pyright",
  -- "dartls",
  "pylsp",
  "intelephense",
  "bashls",
  "dockerls",
  "docker_compose_language_service",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pylsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
        pyflakes = {
          enabled = false,
        },

        pylsp_black = {
          enabled = true,
        },
        flake8 = {
          enabled = true,
          ignore = { "E501" },
        },
        mccabe = {
          enabled = false,
        },
      },
    },
  },
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "htmldjango" },
}
