return {
  "ggandor/leap.nvim",
  config = function()
    vim.keymap.set({'n', 'x', 'o'}, 'm',  '<Plug>(leap-forward)', { desc = "leap forward" })
    vim.keymap.set({'n', 'x', 'o'}, 'M',  '<Plug>(leap-backward)', { desc = "leap backward" })
    vim.keymap.set({'n', 'x', 'o'}, 'gm', '<Plug>(leap-from-window)', { desc = "leap from window" })
  end,
}


