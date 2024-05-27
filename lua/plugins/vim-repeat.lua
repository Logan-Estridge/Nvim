return {
  "tpope/vim-repeat",
  event = "VeryLazy",
  config = function()
    vim.cmd[[
      silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
    ]]
  end
}
