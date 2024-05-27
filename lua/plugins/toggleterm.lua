return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  version = "*",
  config = function()
    require("toggleterm").setup({
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]),
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]]),
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]]),
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]]),
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]]),
    })
  end,
}
