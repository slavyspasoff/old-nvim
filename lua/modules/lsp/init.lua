local success, _ = pcall(require, "lspconfig")
if not success then
	return
end

require("modules.lsp.lsp-installer")
require("modules.lsp.handlers").setup()