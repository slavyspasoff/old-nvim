local success, _ = pcall(require, "lspconfig")
if not success then
	return
end

require("modules.lsp.lsp-installer")
require("modules.lsp.handlers").setup()

-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]   -- for both normal and insert mode
vim.cmd [[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]
