vim.g.mapleader = ' '

-- normal mode: go back to netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- visual mode: move up/down current selection
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>vwm', function()
	require('vim-with-me').StartVimWithMe()
end)
vim.keymap.set('n', '<leader>svwm', function()
	require('vim-with-me').StopVimWithMe()
end)

vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

