vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			diagnostics = { globals = { 'vim' } },
			workspace = { library = vim.api.nvim_get_runtime_file('', true) },
		},
	},
})

require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls' },
	automatic_enable = true,
})

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'Go to definition' })
		vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format() end, { buffer = ev.buf, desc = 'Format' })
	end,
})
