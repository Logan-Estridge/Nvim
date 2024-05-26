return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
    })

    vim.keymap.set("n", "<leader>ar", "<Cmd>SessionRestore<CR>", { desc = "restore session for cwd" })
    vim.keymap.set("n", "<leader>as", "<Cmd>SessionSave<CR>", { desc = "save session" })
  end,
}
