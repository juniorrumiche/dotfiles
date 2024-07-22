return {

   --
   --=============================================================
   --
   {
      "stevearc/dressing.nvim",
      event = "BufRead",
   },

   --
   --=============================================================
   --
   {
      "max397574/better-escape.nvim",
      event = "InsertEnter",
      config = function()
         require("better_escape").setup()
      end,
   },

   --
   --=============================================================
   --
   {
      "camspiers/lens.vim",
      event = "BufRead",
   },

   --
   --=============================================================
   --

   {
      "is0n/jaq-nvim",
      cmd = { "Jaq" },
      config = function()
         require "configs.jaq-nvim"
      end,
   },

   --
   --=============================================================
   --
   {
      "booperlv/nvim-gomove",
      keys = {
         { "<M-j>", mode = "v" },
         { "<M-j>", mode = "i" },
         { "<M-k>", mode = "v" },
         { "<M-k>", mode = "n" },
      },
      config = function()
         require("gomove").setup {}
      end,
   },
   --
   --=============================================================
   --
   {
      "pocco81/true-zen.nvim",
      event = "InsertEnter",
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

   --
   --=============================================================
   --

   {
      "justinmk/vim-sneak",
      keys = { { "S", mode = "n" }, { "s", mode = "n" } },
   },

   --
   --=============================================================
   --
   {
      "kylechui/nvim-surround",
      version = "*", --
      event = "VeryLazy",
      config = function()
         require("nvim-surround").setup {}
      end,
   },

   --
   --=============================================================
   --

   {
      "mattn/emmet-vim",
      keys = { { "<C-Y>", mode = "i" }, { "<C-Y>", mode = "v" } },
   },

   --
   --=============================================================
   --
   {
      "folke/noice.nvim",
      event = "BufEnter",
      config = function()
         require "configs.noice"
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
}
