return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", "<Cmd>Gitsigns preview_hunk<CR>", { desc = "preview git hunk" })
		end,
	},
}
