local success, configs = pcall(require, "nvim-treesitter.configs")
if not success then
	return
end

configs.setup {
	ensure_installed = {'javascript','typescript','html','json', 'css'},
	sync_install = false, 
	ignore_install = { "" },
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- `false` will disable the whole extension
		disable = { 'css' },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false
	},
	rainbow = {
		enable = true,
		disable = {'html'},
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		colors = {
			'#FFD700',
			'#DA70D6',
			'#179FFF',
		}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	}
}

