vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspFormating", { clear = true }),
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_autocmd("CursorHold", {
  group = vim.api.nvim_create_augroup("GitReload", { clear = true }),
  callback = function()
    local function git()
      local path = vim.loop.cwd() .. "/.git"
      local ok, _ = vim.loop.fs_stat(path)
      if ok then
        return true
      end
    end
    local buffer_ft = vim.bo.filetype
    if buffer_ft ~= " NvimTree" then
      if git() then
        vim.api.nvim_command ":checktime"
      end
    end
  end,
})
