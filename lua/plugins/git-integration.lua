return {
	-- {
	-- 	"tpope/vim-fugitive",
	--    event = "VeryLazy",
	-- },
	{
		"lewis6991/gitsigns.nvim",
    event = "InsertEnter",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", "<Cmd>Gitsigns preview_hunk<CR>", { desc = " preview git hunk" })
		end,
	},
}
