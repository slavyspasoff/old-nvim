require ('modules.themes.catppuccin')
require ('modules.themes.tokyonight')
require ('modules.themes.kanagawa')
require ('modules.themes.ayu')
require ('modules.themes.rose-pine')
require ('modules.themes.moonlight')

local colorscheme = 'tokyonight'

local success, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not success then
  return
end

