local options = { noremap = true }
-- Normal mode mappings
vim.keymap.set('n', '<leader>h', '<Cmd>nohlsearch<CR>') --<leader>h turns off search highlighting
vim.keymap.set('n', '<leader>b', '<Cmd>buffers<CR>:b') --<leader>b opens the buffers window
vim.keymap.set('n', '<C-u>', '<C-u>zz') --<C-u> 1/2 pages up and centers the cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz') --<C-d> 1/2 pages down and centers the cursor
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>') --<leader>w writes the file
vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>') --<leader>q quits the file
vim.keymap.set('n', '<localleader>q', '<Cmd>q!<CR>') --<localleader>q quits the file without saving
vim.keymap.set('n', '<leader>z', '<Cmd>wq<CR>') --<leader>z writes and quits the file
vim.keymap.set('n', '<leader>o', 'o<Esc>') --<leader>o puts a line below without going into insert mode
vim.keymap.set('n', '<leader>O', 'O<Esc>') --<leader>O puts a line above without going into insert mode
vim.keymap.set('n', '<leader>s', '<Cmd>%so<CR>') --<leader>s sources the file
--

-- Insert mode mappings
vim.keymap.set('i', '<localleader>f', '<C-x><C-f>') --<localleader>f autocompletes file names
--

-- Command mode mappings
vim.keymap.set('c', 'bda', '%bd<CR>') --bda deletes all buffers
--

