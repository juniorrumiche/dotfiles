local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins
local sources = {
  -- lint para python
  -- b.diagnostics.pylint,
  --
  -- code actions para javascript
  b.code_actions.eslint_d,
  -- php format
  b.formatting.phpcbf,

  -- js, css, html, sass, json, yaml
  b.formatting.prettierd,

  -- Lua
  b.formatting.stylua,
  --python
  b.formatting.autopep8,
  b.formatting.djlint,
  -- b.diagnostics.djlint,
  b.formatting.dart_format,
  -- Shell
  b.formatting.shfmt,
  -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
