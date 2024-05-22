-- Normal mode mappings
vim.keymap.set('n', '<leader>h', '<Cmd>nohlsearch<CR>') --<leader>h turns off search highlighting
vim.keymap.set('n', '<leader>b', '<Cmd>buffers<CR>:b') --<leader>b opens the buffers window
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>') --<leader>w writes the file
vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>') --<leader>q quits the file
vim.keymap.set('n', '<A-q>', '<Cmd>q!<CR>') --<localleader>q quits the file without saving
vim.keymap.set('n', '<leader>z', '<Cmd>wq<CR>') --<leader>z writes and quits the file
vim.keymap.set('n', '<leader>o', 'o<Esc>') --<leader>o puts a line below without going into insert mode
vim.keymap.set('n', '<leader>O', 'O<Esc>') --<leader>O puts a line above without going into insert mode
vim.keymap.set('n', '<leader>s', '<Cmd>%so<CR>') --<leader>s sources the file
--

-- Insert mode mappings
--

-- Command mode mappings
vim.keymap.set('c', 'bda', '%bd<CR>') --bda deletes all buffers
--

