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
  "tailwindcss",

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
          enabled = true,
          ignore = { "E501" },
        },
        pyflakes = {
          enabled = true,
        },
        pylint = {
          enabled = true,
        },
      },
    },
  },
}
