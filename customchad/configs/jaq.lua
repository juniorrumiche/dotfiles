local present, jaq = pcall(require, "jaq-nvim")

if not present then
  return
end
local options = {
  cmds = {
    default = "float",
    external = {
      typescript = "deno run %",
      javascript = "node %",
      markdown = "glow %",
      python = "python %",
      rust = "rustc % && ./$fileBase && rm $fileBase",
      cpp = "g++ % -o $fileBase && ./$fileBase",
      go = "go run %",
      sh = "sh %",
      lua = "lua %",
    },

    -- Uses internal commands such as 'source' and 'luafile'
    internal = {
      lua = "luafile %",
      vim = "source %",
    },
  },

  -- UI settings
  ui = {
    -- Start in insert mode
    startinsert = false,

    -- Switch back to current file
    -- after using Jaq
    wincmd = false,

    -- Floating Window / FTerm settings
    float = {
      -- Floating window border (see ':h nvim_open_win')
      border = "rounded",

      -- Num from `0 - 1` for measurements
      height = 0.8,
      width = 0.8,
      x = 0.5,
      y = 0.5,

      -- Highlight group for floating window/border (see ':h winhl')
      border_hl = "FloatBorder",
      float_hl = "Normal",

      -- Floating Window Transparency (see ':h winblend')
      blend = 0,
    },

    terminal = {
      -- Position of terminal
      position = "bot",

      -- Open the terminal without line numbers
      line_no = false,

      -- Size of terminal
      size = 10,
    },

    toggleterm = {
      -- Position of terminal, one of "vertical" | "horizontal" | "window" | "float"
      position = "horizontal",

      size = 10,
    },

    quickfix = {
      position = "bot",

      size = 10,
    },
  },
}

jaq.setup(options)
