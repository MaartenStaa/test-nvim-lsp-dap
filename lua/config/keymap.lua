vim.keymap.set({ 'n', 'v' }, 'H', '^')
vim.keymap.set({ 'n', 'v' }, 'L', '$')

vim.keymap.set('n', '<Leader><Leader>', '<C-^>')
vim.keymap.set('n', '<leader>w', ':bd<cr>', { noremap = true, silent = true, desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>s', ':w<cr>', { noremap = true, silent = true, desc = 'Save current buffer' })
