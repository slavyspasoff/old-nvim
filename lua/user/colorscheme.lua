vim.g.tokyonight_dark_sidebar = false

local colorscheme = 'tokyonight'

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

 -- vim.api.nvim_create_autocmd("BufEnter",{
 --   pattern = "*.html",
 --   command = "colorscheme palenight"
 -- }) 
 -- 
 -- vim.api.nvim_create_autocmd("BufEnter",{
 --   pattern = {"*.css","*.js"},
 --   command = "colorscheme tokyonight"
 -- })
