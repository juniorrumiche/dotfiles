vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspFormating", { clear = true }),
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_user_command("ReloadFile", function()
  vim.notify "Reloading File"
  vim.api.nvim_command ":checktime"
end, {})
