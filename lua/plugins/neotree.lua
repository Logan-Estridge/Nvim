return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	keys = {
		{ "<C-n>", "<Cmd>Neotree filesystem toggle<CR>", desc = "toggle neo tree" },
	},
	config = function()
		require("neo-tree").setup({
			sort_case_insensitive = true,
			filesystem = {
				filtered_items = { hide_dotfiles = false },
				follow_current_file = { enabled = true },
			},
			buffers = {
				follow_current_file = { enabled = true },
			},
		})
	end,
}
