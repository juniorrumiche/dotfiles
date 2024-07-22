-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {

   -- web
   "html",
   "cssls",
   "jsonls",
   "tsserver",
   "tailwindcss",
   "astro",

   -- c , c++
   "clangd",

   -- "pyright",
   -- "dartls",
   "pylsp",
   "intelephense",
   "bashls",
   "dockerls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
   lspconfig[lsp].setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
   }
end

lspconfig.pylsp.setup {
   on_attach = on_attach,
   on_init = on_init,
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

-- typescript
lspconfig.tsserver.setup {
   on_attach = on_attach,
   on_init = on_init,
   capabilities = capabilities,
}

lspconfig.html.setup {
   on_attach = on_attach,
   on_init = on_init,
   capabilities = capabilities,
   filetypes = { "html", "htmldjango" },
}
