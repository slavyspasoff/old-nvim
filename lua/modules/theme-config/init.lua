require ('modules.theme-config.catppuccin')
require ('modules.theme-config.tokyonight')

local colorscheme = 'tokyonight'

local success, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not success then
  return
end

