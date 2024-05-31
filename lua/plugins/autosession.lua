return {
  "rmagatti/auto-session",
  event = "VeryLazy",
  keys = {
    { "<leader>as", "<Cmd>SessionSave<CR>", desc = " save session" },
    { "<leader>ar", "<Cmd>SessionRestore<CR>", desc = "󰁯 restore session for cwd" },
  },
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_save_enabled = true,
      auto_session_use_git_branch = true,
      bypass_session_save_file_types = { "neo-tree", "alpha", "undotree" },
    })

  end,
}
