-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
local servers = {

  -- web
  "html",
  "cssls",
  "jsonls",
  "emmet_ls",
  "tsserver",
  "sqls",

  -- c , c++
  "clangd",
  "dartls",

  "pyright",
  "intelephense",
  "bashls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        enable = true,
        globals = { "vim", "use", "awesome", "client", "root" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          ["/usr/share/awesome/lib"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua"] = true,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
