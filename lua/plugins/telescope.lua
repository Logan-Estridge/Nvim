return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "󰱼 telescope find files" })
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "󱋡 telescope find oldfiles" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "󰭎 telescope find grep" })
			vim.keymap.set("n", "<leader>fG", builtin.git_files, { desc = " telescope find git files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = " telescope find buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "󰘥 telescope find help" })
			vim.keymap.set("n", "<leader>fc", builtin.command_history, { desc = " telescope find command history" })
			vim.keymap.set("n", "<leader>fs", builtin.spell_suggest, { desc = "󰓆 telescope spell suggest" })
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "󰦄 telescope find keymaps" })
			vim.keymap.set("n", "<leader>fp", "<Cmd>Telescope projects<CR>", { desc = " telescope find projects" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		event = "VeryLazy",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
