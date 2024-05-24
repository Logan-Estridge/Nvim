-- Normal mode mappings
vim.keymap.set('n', '<leader>h', '<Cmd>nohlsearch<CR>', { desc = "turns off search highlighting" })
vim.keymap.set('n', '<leader>b', '<Cmd>buffers<CR>:b', { desc = "opens the buffers window" })
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>', { desc = "writes the file" })
vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>', { desc = "quits the file" })
vim.keymap.set('n', '<leader>z', '<Cmd>wq<CR>', { desc = "writes and quits the file" })
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = "line below without insert mode" })
vim.keymap.set('n', '<leader>O', 'O<Esc>', { desc = "line above without insert mode" })
vim.keymap.set('n', '<leader>s', '<Cmd>%so<CR>', { desc = "sources the file" })
--

-- Insert mode mappings
--

-- Command mode mappings
vim.keymap.set('c', 'bda', '%bd<CR>', { desc = "bda deletes all buffers" })
--

-- Visual line mode mappings
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = "moves visually selected line down" })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = "moves visually selected line up" })
--

