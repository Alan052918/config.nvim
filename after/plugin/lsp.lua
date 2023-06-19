local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'clangd',     -- C/C++
	'rust_analyzer', -- Rust
})

-- Fix undefined global 'vim'
lsp.configure('sumneko_lua', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

lsp.setup()
