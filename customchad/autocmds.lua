vim.api.nvim_create_user_command("ReloadFile", function()
  vim.notify "Reloading File"
  vim.api.nvim_command ":checktime"
end, {})
