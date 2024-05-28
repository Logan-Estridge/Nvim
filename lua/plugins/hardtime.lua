return {
	"m4xshen/hardtime.nvim",
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>He", "<Cmd>Hardtime enable<CR>", desc = "󰛞 enables hardtime" },
    { "<leader>Hd", "<Cmd>Hardtime disable<CR>", desc = "   disables hardtime" },
    { "<leader>Hr", "<Cmd>Hardtime report<CR>", desc = " hardtime report" },
  },
	opts = {
  },
}
