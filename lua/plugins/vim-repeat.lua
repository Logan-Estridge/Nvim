return {
  "tpope/vim-repeat",
  config = function()
    vim.cmd[[
      silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
    ]]
  end
}
