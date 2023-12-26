-- require local variables
local builtin = require('telescope.builtin')

-- set <space> as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- files
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', builtin.find_files)
vim.keymap.set('n', '<leader>pg', builtin.git_files)

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
