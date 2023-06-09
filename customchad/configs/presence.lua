local present, presence = pcall(require, "presence")

if not present then
  return
end

local options = {
  auto_update = true,
  neovim_image_text = "Neovim",
  main_image = "neovim",
  client_id = "793271441293967371",
  log_level = nil,
  debounce_timeout = 30,
  enable_line_number = false,
  blacklist = {},
  buttons = true,
  file_assets = {},
  show_time = true,
  editing_text = "Editing %s",
  file_explorer_text = "Browsing %s",
  git_commit_text = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text = "Reading %s",
  workspace_text = "Working on %s",
  line_number_text = "Line %s out of %s",
}

presence.setup(options)
