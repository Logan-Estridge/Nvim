local map = vim.keymap.set

-- Normal mode mappings
map('n', '<leader>h', '<Cmd>nohlsearch<CR>', { desc = "turns off search highlighting" })
map('n', '<leader>b', '<Cmd>buffers<CR>:b', { desc = "opens the buffers window" })
map('n', '<leader>w', '<Cmd>w<CR>', { desc = "writes the file" })
map('n', '<leader>q', '<Cmd>q<CR>', { desc = "quits the file" })
map('n', '<leader>z', '<Cmd>wq<CR>', { desc = "writes and quits the file" })
map('n', '<leader>o', 'o<Esc>', { desc = "line below without insert mode" })
map('n', '<leader>O', 'O<Esc>', { desc = "line above without insert mode" })
map('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = "replaces (:%s) the word the cursor is over" })
--

-- Insert mode mappings
--

-- Command mode mappings
map('c', 'bda', '%bd<CR>', { desc = "bda deletes all buffers" })
--

-- Visual line mode mappings
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = "moves visually selected line down" })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = "moves visually selected line up" })
--

