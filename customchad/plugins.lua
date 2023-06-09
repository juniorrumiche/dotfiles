local overrides = require "custom.configs.overrides"

local plugins = {

  {
    "andweeb/presence.nvim",
    event = "BufEnter",
    config = function()
      require "custom.configs.presence"
      -- add any options here
    end,
  },
  --
  --muestra los pliegues en la columna de signos
  {
    "yaocccc/nvim-foldsign",
    keys = { { "z", mode = "n" }, { "z", mode = "v" } },
    config = function()
      require("nvim-foldsign").setup(require("nvim-foldsign").setup {
        offset = -3,
        foldsigns = {
          close = " 󰍝 ",
          open = "  ",
          seps = { "│", "┃" },
        },
      })
    end,
  },

  --
  --Personalización de Foldtext
  {
    keys = { { "z", mode = "n" }, { "z", mode = "v" } },
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup {}
    end,
  },

  --
  --Marcadores con almacenamiento de archivos global
  {
    "tomasky/bookmarks.nvim",
    config = function()
      require("bookmarks").setup {}
    end,
  },

  --
  --agregar/cambiar/eliminar paresde delimitadores circundantes.
  {
    "kylechui/nvim-surround",
    version = "*", --
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- mover lineas
  --
  {
    "booperlv/nvim-gomove",
    keys = {
      { "<M-j>", mode = "v" },
      { "<M-k>", mode = "v" },
    },
    -- event = "InsertEnter",
    config = function()
      require("gomove").setup {}
    end,
  },

  --
  -- crea comandos para ejecuar projectos
  {
    "rest-nvim/rest.nvim",
    ft = { "http" },
    config = function()
      require("rest-nvim").setup {
        result = {
          show_headers = false,
        },
      }
    end,
  },

  -- para emmet, el lsp de emmet no me gusta
  {
    "mattn/emmet-vim",
    keys = { { "<C-Y>", mode = "i" }, { "<C-Y>", mode = "v" } },
  },

  -- modo no distraccion
  {
    event = "InsertEnter",
    "pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup {
        modes = {
          ataraxis = {
            minimum_writing_area = { -- minimum size of main window
              width = 105,
              height = 44,
            },
          },
        },
      }
    end,
  },

  -- mejora la interfaz de usuario
  {
    "folke/noice.nvim",
    event = "BufEnter",
    config = function()
      require "custom.configs.noice"
      -- add any options here
    end,
    dependencies = {
      {
        "MunifTanjim/nui.nvim",
      },
      {
        "rcarriga/nvim-notify",
        config = function()
          require("notify").setup {
            stages = "fade",
            timeout = 1000,
          }
          vim.notify = require "notify"
        end,
      },
    },
  },
  --
  -- config for Git Blame plugin
  --
  {
    "f-person/git-blame.nvim",
  },

  {
    "is0n/jaq-nvim",
    cmd = { "Jaq" },
    config = function()
      require "custom.configs.jaq"
    end,
  },
  ----
  --
  -- SNIPPTES
  --
  --
  {
    "/softchris/ts-snippets",
    ft = "typescript",
  },
  {
    "ylcnfrht/vscode-python-snippet-pack",
    ft = "python",
  },
  {
    "Alexisvt/flutter-snippets",
    ft = "dart",
  },
  ---
  --
  --
  --
  -- work databases ui
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    keys = { { "<leader>db", mode = "n" } },
  },

  -- gestor de proyectos con telescope
  { "nvim-telescope/telescope-project.nvim" },
  --
  -- for autocose tags react components
  --
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascriptreact", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup {}
    end,
  },
  --
  --view floating preview definitio
  --
  {
    "rmagatti/goto-preview",
    keys = { { "gpd", mode = "n" } },
    config = function()
      require("goto-preview").setup {
        width = 90,
        height = 20,
        default_mappings = true,
      }
    end,
  },

  --
  -- sneak for move fast in buffer
  --
  {
    "justinmk/vim-sneak",
    keys = { { "S", mode = "n" }, { "s", mode = "n" } },
  },
  --
  --hot reload for flutter dev
  --
  {

    "reisub0/hot-reload.vim",
    ft = "dart",
  },

  --
  -- for resize windows on change buffer
  --
  {
    "camspiers/lens.vim",
    event = "BufRead",
  },
  ---
  --
  --
  --
  --
  --
  --
  --

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        -- pretty code action menu
        {
          "weilbith/nvim-code-action-menu",
          cmd = "CodeActionMenu",
          config = function()
            vim.g.code_action_menu_show_diff = false
            vim.g.code_action_menu_show_details = false
          end,
        },
        -- for pretty diagnostics
        {
          "folke/trouble.nvim",
          config = function()
            require("trouble").setup {}
          end,
        },

        -- inject actions in lsp
        {
          "jose-elias-alvarez/null-ls.nvim",
          config = function()
            require "custom.configs.null-ls"
          end,
        },
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- overrido config of treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- override telescope for lad project
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  -- override blankline
  { "lukas-reineke/indent-blankline.nvim", opts = overrides.blankline },
  -- override cmp
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  -- mason override
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  -- nvim tree override
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- better scape for escape JK
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- which_key enable plugin
  {
    "folke/which-key.nvim",
    enabled = true,
  },

  -- change size for term
  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },
}

return plugins
