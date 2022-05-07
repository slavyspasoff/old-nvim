-- Setup nvim-cmp.
local success, npairs = pcall(require, "nvim-autopairs")
if not success then
  return
end

npairs.setup {
  check_ts = true,
  ts_config = {
    javascript = { "string", "template_string" },
  },
  disable_filetype = { "TelescopePrompt" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0,
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_success, cmp = pcall(require, "cmp")
if not cmp_success then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
