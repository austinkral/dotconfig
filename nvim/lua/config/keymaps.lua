-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Source file with leader
vim.keymap.set('n', '<leader>x', ':source<CR>')
vim.keymap.set('n', '<leader>t', ':.lua<CR>')
vim.keymap.set('v', '<leader>t', ':lua<CR>')

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

-- Telescope
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
vim.keymap.set({ 'n', 't', 'i', 'v'}, '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set({ 'n', 't', 'i', 'v'}, '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set({ 'n', 't', 'i', 'v'}, '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set({ 'n', 't', 'i', 'v'}, '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
require('telescope').setup({
    defaults = {
	mappings = {
	    i = {
		['<esc>'] = actions.close,
	    },
	},
    },
})

