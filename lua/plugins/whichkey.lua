return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
      local wk = require("which-key")

      -- Define your mappings
      wk.register({
        ["<leader>"] = {
          f = {
            name = "󰭎 telescope ...", -- Group name
          },
          c = {
            name = "code ...", -- Group name
          },
          a = {
            name = " 󰁯 auto-session ...", -- Group name
          },
          g = {
            name = "go ...", -- Group name
          },
          l = {
            name = " lazygit ...", -- Group name
          },
          H = {
            name = "󰚌 Hardtime ...", -- Group name
          },
        },
      })
    end,
    opts = {},
  },
}
